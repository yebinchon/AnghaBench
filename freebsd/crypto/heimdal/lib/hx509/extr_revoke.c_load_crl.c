
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int time_t ;
struct stat {int st_mtime; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_8__ {TYPE_1__ signatureValue; } ;
typedef TYPE_2__ CRLCertificateList ;


 int HX509_CRYPTO_SIG_INVALID_FORMAT ;
 int decode_CRLCertificateList (void*,size_t,TYPE_2__*,size_t*) ;
 int errno ;
 int free_CRLCertificateList (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int rk_undumpdata (char const*,void**,size_t*) ;
 int rk_xfree (void*) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static int
load_crl(const char *path, time_t *t, CRLCertificateList *crl)
{
    size_t length, size;
    struct stat sb;
    void *data;
    int ret;

    memset(crl, 0, sizeof(*crl));

    ret = rk_undumpdata(path, &data, &length);
    if (ret)
 return ret;

    ret = stat(path, &sb);
    if (ret)
 return errno;

    *t = sb.st_mtime;

    ret = decode_CRLCertificateList(data, length, crl, &size);
    rk_xfree(data);
    if (ret)
 return ret;


    if (crl->signatureValue.length & 7) {
 free_CRLCertificateList(crl);
 return HX509_CRYPTO_SIG_INVALID_FORMAT;
    }
    return 0;
}
