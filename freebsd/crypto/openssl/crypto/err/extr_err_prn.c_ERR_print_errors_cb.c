
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf2 ;
typedef int buf ;
typedef int CRYPTO_THREAD_ID ;


 int BIO_snprintf (char*,int,char*,unsigned long,char*,char const*,int,char const*) ;
 int CRYPTO_THREAD_get_current_id () ;
 int ERR_TXT_STRING ;
 int ERR_error_string_n (unsigned long,char*,int) ;
 unsigned long ERR_get_error_line_data (char const**,int*,char const**,int*) ;
 size_t strlen (char*) ;

void ERR_print_errors_cb(int (*cb) (const char *str, size_t len, void *u),
                         void *u)
{
    unsigned long l;
    char buf[256];
    char buf2[4096];
    const char *file, *data;
    int line, flags;




    union {
        CRYPTO_THREAD_ID tid;
        unsigned long ltid;
    } tid;

    tid.ltid = 0;
    tid.tid = CRYPTO_THREAD_get_current_id();

    while ((l = ERR_get_error_line_data(&file, &line, &data, &flags)) != 0) {
        ERR_error_string_n(l, buf, sizeof(buf));
        BIO_snprintf(buf2, sizeof(buf2), "%lu:%s:%s:%d:%s\n", tid.ltid, buf,
                     file, line, (flags & ERR_TXT_STRING) ? data : "");
        if (cb(buf2, strlen(buf2), u) <= 0)
            break;
    }
}
