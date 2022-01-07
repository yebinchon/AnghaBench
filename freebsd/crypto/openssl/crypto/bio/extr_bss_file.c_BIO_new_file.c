
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int BIO ;


 int BIO_CLOSE ;
 int BIO_FLAGS_UPLINK ;
 int BIO_FP_TEXT ;
 int BIO_F_BIO_NEW_FILE ;
 int BIO_R_NO_SUCH_FILE ;
 int BIO_clear_flags (int *,int ) ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_fp (int *,int *,int) ;
 int BIOerr (int ,int ) ;
 scalar_t__ ENOENT ;
 scalar_t__ ENXIO ;
 int ERR_R_SYS_LIB ;
 int ERR_add_error_data (int,char*,char const*,char*,char const*,char*) ;
 int SYS_F_FOPEN ;
 int SYSerr (int ,int ) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int get_last_sys_error () ;
 int * openssl_fopen (char const*,char const*) ;
 int * strchr (char const*,char) ;

BIO *BIO_new_file(const char *filename, const char *mode)
{
    BIO *ret;
    FILE *file = openssl_fopen(filename, mode);
    int fp_flags = BIO_CLOSE;

    if (strchr(mode, 'b') == ((void*)0))
        fp_flags |= BIO_FP_TEXT;

    if (file == ((void*)0)) {
        SYSerr(SYS_F_FOPEN, get_last_sys_error());
        ERR_add_error_data(5, "fopen('", filename, "','", mode, "')");
        if (errno == ENOENT



            )
            BIOerr(BIO_F_BIO_NEW_FILE, BIO_R_NO_SUCH_FILE);
        else
            BIOerr(BIO_F_BIO_NEW_FILE, ERR_R_SYS_LIB);
        return ((void*)0);
    }
    if ((ret = BIO_new(BIO_s_file())) == ((void*)0)) {
        fclose(file);
        return ((void*)0);
    }

    BIO_clear_flags(ret, BIO_FLAGS_UPLINK);

    BIO_set_fp(ret, file, fp_flags);
    return ret;
}
