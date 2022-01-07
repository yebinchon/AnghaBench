
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct cleanup {int dummy; } ;
typedef struct symbol* badness_vector ;


 scalar_t__ STANDARD ;
 char* alloca (int) ;
 scalar_t__ classify_oload_match (struct symbol**,int,int ) ;
 scalar_t__ cp_find_first_component (char const*) ;
 int discard_cleanups (struct cleanup*) ;
 int do_cleanups (struct cleanup*) ;
 int find_oload_champ (struct type**,int,int ,int,int *,struct symbol**,struct symbol***) ;
 int gdb_assert (int) ;
 struct cleanup* make_cleanup (int (*) (struct symbol**),struct symbol**) ;
 struct symbol** make_symbol_overload_list (char const*,char*) ;
 int strncpy (char*,char const*,int) ;
 int xfree (struct symbol**) ;

__attribute__((used)) static int
find_oload_champ_namespace_loop (struct type **arg_types, int nargs,
     const char *func_name,
     const char *qualified_name,
     int namespace_len,
     struct symbol ***oload_syms,
     struct badness_vector **oload_champ_bv,
     int *oload_champ)
{
  int next_namespace_len = namespace_len;
  int searched_deeper = 0;
  int num_fns = 0;
  struct cleanup *old_cleanups;
  int new_oload_champ;
  struct symbol **new_oload_syms;
  struct badness_vector *new_oload_champ_bv;
  char *new_namespace;

  if (next_namespace_len != 0)
    {
      gdb_assert (qualified_name[next_namespace_len] == ':');
      next_namespace_len += 2;
    }
  next_namespace_len
    += cp_find_first_component (qualified_name + next_namespace_len);


  *oload_syms = ((void*)0);
  *oload_champ_bv = ((void*)0);




  if (qualified_name[next_namespace_len] == ':')
    {
      searched_deeper = 1;

      if (find_oload_champ_namespace_loop (arg_types, nargs,
        func_name, qualified_name,
        next_namespace_len,
        oload_syms, oload_champ_bv,
        oload_champ))
 {
   return 1;
 }
    };
  old_cleanups = make_cleanup (xfree, *oload_syms);
  old_cleanups = make_cleanup (xfree, *oload_champ_bv);
  new_namespace = alloca (namespace_len + 1);
  strncpy (new_namespace, qualified_name, namespace_len);
  new_namespace[namespace_len] = '\0';
  new_oload_syms = make_symbol_overload_list (func_name,
           new_namespace);
  while (new_oload_syms[num_fns])
    ++num_fns;

  new_oload_champ = find_oload_champ (arg_types, nargs, 0, num_fns,
          ((void*)0), new_oload_syms,
          &new_oload_champ_bv);
  if (new_oload_champ != -1
      && classify_oload_match (new_oload_champ_bv, nargs, 0) == STANDARD)
    {
      *oload_syms = new_oload_syms;
      *oload_champ = new_oload_champ;
      *oload_champ_bv = new_oload_champ_bv;
      do_cleanups (old_cleanups);
      return 1;
    }
  else if (searched_deeper)
    {
      xfree (new_oload_syms);
      xfree (new_oload_champ_bv);
      discard_cleanups (old_cleanups);
      return 0;
    }
  else
    {
      gdb_assert (new_oload_champ != -1);
      *oload_syms = new_oload_syms;
      *oload_champ = new_oload_champ;
      *oload_champ_bv = new_oload_champ_bv;
      discard_cleanups (old_cleanups);
      return 0;
    }
}
