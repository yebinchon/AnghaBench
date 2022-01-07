
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rsbuf ;
typedef int lsbuf ;
typedef int fsbuf ;


 int BIO_snprintf (char*,size_t,char*,unsigned long,...) ;
 unsigned long ERR_GET_FUNC (unsigned long) ;
 unsigned long ERR_GET_LIB (unsigned long) ;
 unsigned long ERR_GET_REASON (unsigned long) ;
 char* ERR_func_error_string (unsigned long) ;
 char* ERR_lib_error_string (unsigned long) ;
 char* ERR_reason_error_string (unsigned long) ;
 size_t strlen (char*) ;

void ERR_error_string_n(unsigned long e, char *buf, size_t len)
{
    char lsbuf[64], fsbuf[64], rsbuf[64];
    const char *ls, *fs, *rs;
    unsigned long l, f, r;

    if (len == 0)
        return;

    l = ERR_GET_LIB(e);
    ls = ERR_lib_error_string(e);
    if (ls == ((void*)0)) {
        BIO_snprintf(lsbuf, sizeof(lsbuf), "lib(%lu)", l);
        ls = lsbuf;
    }

    fs = ERR_func_error_string(e);
    f = ERR_GET_FUNC(e);
    if (fs == ((void*)0)) {
        BIO_snprintf(fsbuf, sizeof(fsbuf), "func(%lu)", f);
        fs = fsbuf;
    }

    rs = ERR_reason_error_string(e);
    r = ERR_GET_REASON(e);
    if (rs == ((void*)0)) {
        BIO_snprintf(rsbuf, sizeof(rsbuf), "reason(%lu)", r);
        rs = rsbuf;
    }

    BIO_snprintf(buf, len, "error:%08lX:%s:%s:%s", e, ls, fs, rs);
    if (strlen(buf) == len - 1) {

        BIO_snprintf(buf, len, "err:%lx:%lx:%lx:%lx", e, l, f, r);
    }
}
