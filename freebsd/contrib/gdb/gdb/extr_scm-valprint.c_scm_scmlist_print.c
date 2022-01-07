
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef int LONGEST ;


 int SCM_CAR (int ) ;
 int SCM_CDR (int ) ;
 scalar_t__ SCM_NECONSP (int ) ;
 scalar_t__ SCM_NIMP (int ) ;
 scalar_t__ SCM_NNULLP (int ) ;
 int fputs_filtered (char*,struct ui_file*) ;
 unsigned int print_max ;
 int scm_scmval_print (int ,struct ui_file*,int,int,int,int) ;

__attribute__((used)) static void
scm_scmlist_print (LONGEST svalue, struct ui_file *stream, int format,
     int deref_ref, int recurse, enum val_prettyprint pretty)
{
  unsigned int more = print_max;
  if (recurse > 6)
    {
      fputs_filtered ("...", stream);
      return;
    }
  scm_scmval_print (SCM_CAR (svalue), stream, format,
      deref_ref, recurse + 1, pretty);
  svalue = SCM_CDR (svalue);
  for (; SCM_NIMP (svalue); svalue = SCM_CDR (svalue))
    {
      if (SCM_NECONSP (svalue))
 break;
      fputs_filtered (" ", stream);
      if (--more == 0)
 {
   fputs_filtered ("...", stream);
   return;
 }
      scm_scmval_print (SCM_CAR (svalue), stream, format,
   deref_ref, recurse + 1, pretty);
    }
  if (SCM_NNULLP (svalue))
    {
      fputs_filtered (" . ", stream);
      scm_scmval_print (svalue, stream, format,
   deref_ref, recurse + 1, pretty);
    }
}
