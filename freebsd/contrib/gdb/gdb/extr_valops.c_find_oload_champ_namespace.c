
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct badness_vector {int dummy; } ;


 int find_oload_champ_namespace_loop (struct type**,int,char const*,char const*,int ,struct symbol***,struct badness_vector**,int*) ;

__attribute__((used)) static int
find_oload_champ_namespace (struct type **arg_types, int nargs,
       const char *func_name,
       const char *qualified_name,
       struct symbol ***oload_syms,
       struct badness_vector **oload_champ_bv)
{
  int oload_champ;

  find_oload_champ_namespace_loop (arg_types, nargs,
       func_name,
       qualified_name, 0,
       oload_syms, oload_champ_bv,
       &oload_champ);

  return oload_champ;
}
