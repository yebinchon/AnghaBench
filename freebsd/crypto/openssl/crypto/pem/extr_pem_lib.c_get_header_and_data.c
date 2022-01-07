
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum header_status { ____Placeholder_header_status } header_status ;
typedef int BIO ;


 int BIO_gets (int *,char*,scalar_t__) ;
 scalar_t__ BIO_puts (int *,char*) ;
 int ENDLEN ;
 int ERR_R_MALLOC_FAILURE ;
 int IN_HEADER ;
 scalar_t__ LINESIZE ;
 int MAYBE_HEADER ;
 unsigned int PEM_FLAG_ONLY_B64 ;
 int PEM_F_GET_HEADER_AND_DATA ;
 int PEM_R_BAD_END_LINE ;
 int PEM_R_SHORT_HEADER ;
 int PEMerr (int ,int ) ;
 int POST_HEADER ;
 size_t TAILLEN ;
 char* endstr ;
 int * memchr (char*,char,int) ;
 int pem_free (char*,unsigned int,scalar_t__) ;
 char* pem_malloc (scalar_t__,unsigned int) ;
 int sanitize_line (char*,int,unsigned int) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 char* tailstr ;

__attribute__((used)) static int get_header_and_data(BIO *bp, BIO **header, BIO **data, char *name,
                               unsigned int flags)
{
    BIO *tmp = *header;
    char *linebuf, *p;
    int len, line, ret = 0, end = 0;

    enum header_status got_header = MAYBE_HEADER;
    unsigned int flags_mask;
    size_t namelen;



    linebuf = pem_malloc(LINESIZE + 1, flags);
    if (linebuf == ((void*)0)) {
        PEMerr(PEM_F_GET_HEADER_AND_DATA, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    for (line = 0; ; line++) {
        flags_mask = ~0u;
        len = BIO_gets(bp, linebuf, LINESIZE);
        if (len <= 0) {
            PEMerr(PEM_F_GET_HEADER_AND_DATA, PEM_R_SHORT_HEADER);
            goto err;
        }

        if (got_header == MAYBE_HEADER) {
            if (memchr(linebuf, ':', len) != ((void*)0))
                got_header = IN_HEADER;
        }
        if (!strncmp(linebuf, endstr, ENDLEN) || got_header == IN_HEADER)
            flags_mask &= ~PEM_FLAG_ONLY_B64;
        len = sanitize_line(linebuf, len, flags & flags_mask);


        if (linebuf[0] == '\n') {
            if (got_header == POST_HEADER) {

                PEMerr(PEM_F_GET_HEADER_AND_DATA, PEM_R_BAD_END_LINE);
                goto err;
            }
            got_header = POST_HEADER;
            tmp = *data;
            continue;
        }


        if (strncmp(linebuf, endstr, ENDLEN) == 0) {
            p = linebuf + ENDLEN;
            namelen = strlen(name);
            if (strncmp(p, name, namelen) != 0 ||
                strncmp(p + namelen, tailstr, TAILLEN) != 0) {
                PEMerr(PEM_F_GET_HEADER_AND_DATA, PEM_R_BAD_END_LINE);
                goto err;
            }
            if (got_header == MAYBE_HEADER) {
                *header = *data;
                *data = tmp;
            }
            break;
        } else if (end) {

            PEMerr(PEM_F_GET_HEADER_AND_DATA, PEM_R_BAD_END_LINE);
            goto err;
        }




        if (BIO_puts(tmp, linebuf) < 0)
            goto err;



        if (got_header == POST_HEADER) {

            if (len > 65)
                goto err;
            if (len < 65)
                end = 1;
        }
    }

    ret = 1;
err:
    pem_free(linebuf, flags, LINESIZE + 1);
    return ret;
}
