
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct fn_field {int physname; } ;
struct badness_vector {int* rank; } ;
struct TYPE_2__ {struct type* type; } ;


 int SYMBOL_DEMANGLED_NAME (struct symbol*) ;
 int SYMBOL_TYPE (struct symbol*) ;
 struct type* TYPE_FIELD_TYPE (int ,int) ;
 TYPE_1__* TYPE_FN_FIELD_ARGS (struct fn_field*,int) ;
 int TYPE_FN_FIELD_TYPE (struct fn_field*,int) ;
 int TYPE_NFIELDS (int ) ;
 int compare_badness (struct badness_vector*,struct badness_vector*) ;
 int fprintf_filtered (int ,char*,int,int) ;
 int gdb_stderr ;
 int oload_method_static (int,struct fn_field*,int) ;
 scalar_t__ overload_debug ;
 struct badness_vector* rank_function (struct type**,int,struct type**,int) ;
 int xfree (struct type**) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static int
find_oload_champ (struct type **arg_types, int nargs, int method,
    int num_fns, struct fn_field *fns_ptr,
    struct symbol **oload_syms,
    struct badness_vector **oload_champ_bv)
{
  int ix;
  struct badness_vector *bv;
  int oload_champ = -1;
  int oload_ambiguous = 0;


  *oload_champ_bv = ((void*)0);


  for (ix = 0; ix < num_fns; ix++)
    {
      int jj;
      int static_offset = oload_method_static (method, fns_ptr, ix);
      int nparms;
      struct type **parm_types;

      if (method)
 {
   nparms = TYPE_NFIELDS (TYPE_FN_FIELD_TYPE (fns_ptr, ix));
 }
      else
 {

   nparms=TYPE_NFIELDS(SYMBOL_TYPE(oload_syms[ix]));
 }


      parm_types = (struct type **) xmalloc (nparms * (sizeof (struct type *)));
      for (jj = 0; jj < nparms; jj++)
 parm_types[jj] = (method
     ? (TYPE_FN_FIELD_ARGS (fns_ptr, ix)[jj].type)
     : TYPE_FIELD_TYPE (SYMBOL_TYPE (oload_syms[ix]), jj));



      bv = rank_function (parm_types, nparms, arg_types + static_offset,
     nargs - static_offset);

      if (!*oload_champ_bv)
 {
   *oload_champ_bv = bv;
   oload_champ = 0;
 }
      else

 switch (compare_badness (bv, *oload_champ_bv))
   {
   case 0:
     oload_ambiguous = 1;
     break;
   case 1:
     oload_ambiguous = 2;
     break;
   case 2:
     *oload_champ_bv = bv;
     oload_ambiguous = 0;
     oload_champ = ix;
     break;
   case 3:
   default:
     break;
   }
      xfree (parm_types);
      if (overload_debug)
 {
   if (method)
     fprintf_filtered (gdb_stderr,"Overloaded method instance %s, # of parms %d\n", fns_ptr[ix].physname, nparms);
   else
     fprintf_filtered (gdb_stderr,"Overloaded function instance %s # of parms %d\n", SYMBOL_DEMANGLED_NAME (oload_syms[ix]), nparms);
   for (jj = 0; jj < nargs - static_offset; jj++)
     fprintf_filtered (gdb_stderr,"...Badness @ %d : %d\n", jj, bv->rank[jj]);
   fprintf_filtered (gdb_stderr,"Overload resolution champion is %d, ambiguous? %d\n", oload_champ, oload_ambiguous);
 }
    }

  return oload_champ;
}
