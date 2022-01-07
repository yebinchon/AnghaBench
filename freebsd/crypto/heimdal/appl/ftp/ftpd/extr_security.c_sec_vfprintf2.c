
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 int buffer_write (int *,char*,int) ;
 scalar_t__ data_prot ;
 int free (char*) ;
 int out_buffer ;
 scalar_t__ prot_clear ;
 int vasprintf (char**,char const*,int ) ;
 int vfprintf (int *,char const*,int ) ;

int
sec_vfprintf2(FILE *f, const char *fmt, va_list ap)
{
    char *buf;
    int ret;
    if(data_prot == prot_clear)
 return vfprintf(f, fmt, ap);
    else {
 int len;
 len = vasprintf(&buf, fmt, ap);
 if (len == -1)
     return len;
 ret = buffer_write(&out_buffer, buf, len);
 free(buf);
 return ret;
    }
}
