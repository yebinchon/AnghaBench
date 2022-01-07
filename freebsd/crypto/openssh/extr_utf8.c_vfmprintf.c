
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 scalar_t__ EOF ;
 int INT_MAX ;
 scalar_t__ fputs (char*,int *) ;
 int free (char*) ;
 int vasnmprintf (char**,int ,int *,char const*,int ) ;

int
vfmprintf(FILE *stream, const char *fmt, va_list ap)
{
 char *str;
 int ret;

 if ((ret = vasnmprintf(&str, INT_MAX, ((void*)0), fmt, ap)) < 0)
  return -1;
 if (fputs(str, stream) == EOF)
  ret = -1;
 free(str);
 return ret;
}
