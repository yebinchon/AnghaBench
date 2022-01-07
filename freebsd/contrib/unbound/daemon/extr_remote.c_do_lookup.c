
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct worker {int dummy; } ;
typedef int RES ;


 int free (int *) ;
 int parse_arg_name (int *,char*,int **,size_t*,int*) ;
 int print_deleg_lookup (int *,struct worker*,int *,size_t,int) ;

__attribute__((used)) static void
do_lookup(RES* ssl, struct worker* worker, char* arg)
{
 uint8_t* nm;
 int nmlabs;
 size_t nmlen;
 if(!parse_arg_name(ssl, arg, &nm, &nmlen, &nmlabs))
  return;
 (void)print_deleg_lookup(ssl, worker, nm, nmlen, nmlabs);
 free(nm);
}
