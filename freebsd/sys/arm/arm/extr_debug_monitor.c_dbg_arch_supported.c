
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int boolean_t ;


 int FALSE ;




 int TRUE ;
 int cp14_dbgdidr_get () ;
 int dbg_model ;

__attribute__((used)) static __inline boolean_t
dbg_arch_supported(void)
{
 uint32_t dbg_didr;

 switch (dbg_model) {
 case 131:
 case 130:
  dbg_didr = cp14_dbgdidr_get();






  if (dbg_didr == 0)
   return (FALSE);
  return (TRUE);
 case 129:
 case 128:
  return (TRUE);
 default:

  return (FALSE);
 }
}
