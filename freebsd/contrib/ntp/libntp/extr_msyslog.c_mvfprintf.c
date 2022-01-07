
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int nfmt ;
typedef int FILE ;


 int GetLastError () ;
 int NO_ERROR ;
 int errno ;
 int format_errmsg (char const*,int,char const*,int) ;
 int vfprintf (int *,char const*,int ) ;

int
mvfprintf(
 FILE * fp,
 const char * fmt,
 va_list ap
 )
{

 char nfmt[256];



 int errval;
  errval = errno;


 format_errmsg(nfmt, sizeof(nfmt), fmt, errval);



 return vfprintf(fp, nfmt, ap);
}
