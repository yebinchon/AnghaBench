
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MS_PVKMAGIC ;
 int PEM_F_DO_PVK_HEADER ;
 int PEM_R_BAD_MAGIC_NUMBER ;
 int PEM_R_INCONSISTENT_HEADER ;
 int PEM_R_PVK_TOO_SHORT ;
 int PEMerr (int ,int ) ;
 unsigned int PVK_MAX_KEYLEN ;
 unsigned int PVK_MAX_SALTLEN ;
 unsigned int read_ledword (unsigned char const**) ;

__attribute__((used)) static int do_PVK_header(const unsigned char **in, unsigned int length,
                         int skip_magic,
                         unsigned int *psaltlen, unsigned int *pkeylen)
{
    const unsigned char *p = *in;
    unsigned int pvk_magic, is_encrypted;
    if (skip_magic) {
        if (length < 20) {
            PEMerr(PEM_F_DO_PVK_HEADER, PEM_R_PVK_TOO_SHORT);
            return 0;
        }
    } else {
        if (length < 24) {
            PEMerr(PEM_F_DO_PVK_HEADER, PEM_R_PVK_TOO_SHORT);
            return 0;
        }
        pvk_magic = read_ledword(&p);
        if (pvk_magic != MS_PVKMAGIC) {
            PEMerr(PEM_F_DO_PVK_HEADER, PEM_R_BAD_MAGIC_NUMBER);
            return 0;
        }
    }

    p += 4;


        read_ledword(&p);
    is_encrypted = read_ledword(&p);
    *psaltlen = read_ledword(&p);
    *pkeylen = read_ledword(&p);

    if (*pkeylen > PVK_MAX_KEYLEN || *psaltlen > PVK_MAX_SALTLEN)
        return 0;

    if (is_encrypted && !*psaltlen) {
        PEMerr(PEM_F_DO_PVK_HEADER, PEM_R_INCONSISTENT_HEADER);
        return 0;
    }

    *in = p;
    return 1;
}
