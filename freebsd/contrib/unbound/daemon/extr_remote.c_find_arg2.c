
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RES ;


 char* skipwhite (char*) ;
 int ssl_printf (int *,char*,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
find_arg2(RES* ssl, char* arg, char** arg2)
{
 char* as = strchr(arg, ' ');
 char* at = strchr(arg, '\t');
 if(as && at) {
  if(at < as)
   as = at;
  as[0]=0;
  *arg2 = skipwhite(as+1);
 } else if(as) {
  as[0]=0;
  *arg2 = skipwhite(as+1);
 } else if(at) {
  at[0]=0;
  *arg2 = skipwhite(at+1);
 } else {
  ssl_printf(ssl, "error could not find next argument "
   "after %s\n", arg);
  return 0;
 }
 return 1;
}
