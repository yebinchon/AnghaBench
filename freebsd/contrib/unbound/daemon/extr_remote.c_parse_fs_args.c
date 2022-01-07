
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct delegpt {int dummy; } ;
typedef int RES ;


 int find_arg2 (int *,char*,char**) ;
 int free (int *) ;
 int parse_arg_name (int *,char*,int **,size_t*,int*) ;
 struct delegpt* parse_delegpt (int *,char*,int *,int) ;
 int ssl_printf (int *,char*,char*) ;

__attribute__((used)) static int
parse_fs_args(RES* ssl, char* args, uint8_t** nm, struct delegpt** dp,
 int* insecure, int* prime)
{
 char* zonename;
 char* rest;
 size_t nmlen;
 int nmlabs;

 while(args[0] == '+') {
  if(!find_arg2(ssl, args, &rest))
   return 0;
  while(*(++args) != 0) {
   if(*args == 'i' && insecure)
    *insecure = 1;
   else if(*args == 'p' && prime)
    *prime = 1;
   else {
    (void)ssl_printf(ssl, "error: unknown option %s\n", args);
    return 0;
   }
  }
  args = rest;
 }

 if(dp) {
  if(!find_arg2(ssl, args, &rest))
   return 0;
  zonename = args;
  args = rest;
 } else zonename = args;
 if(!parse_arg_name(ssl, zonename, nm, &nmlen, &nmlabs))
  return 0;


 if(dp) {
  if(!(*dp = parse_delegpt(ssl, args, *nm, 1))) {
   free(*nm);
   return 0;
  }
 }
 return 1;
}
