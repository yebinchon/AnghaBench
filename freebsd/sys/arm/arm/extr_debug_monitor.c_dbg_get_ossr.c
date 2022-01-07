
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int DBGOSLSR_OSLM0 ;
 int FALSE ;


 int TRUE ;
 int cp14_dbgoslsr_get () ;
 int dbg_model ;

__attribute__((used)) static __inline boolean_t
dbg_get_ossr(void)
{

 switch (dbg_model) {
 case 129:
  if ((cp14_dbgoslsr_get() & DBGOSLSR_OSLM0) != 0)
   return (TRUE);

  return (FALSE);
 case 128:
  return (TRUE);
 default:
  return (FALSE);
 }
}
