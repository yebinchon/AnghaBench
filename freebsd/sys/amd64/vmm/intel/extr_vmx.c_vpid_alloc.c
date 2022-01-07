
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int PROCBASED2_ENABLE_VPID ;
 int VM_MAXCPU ;
 int alloc_unr (int ) ;
 int atomic_add_int (int *,int) ;
 int panic (char*,int) ;
 int procbased_ctls2 ;
 int vpid_alloc_failed ;
 int vpid_free (int) ;
 int vpid_unr ;

__attribute__((used)) static void
vpid_alloc(uint16_t *vpid, int num)
{
 int i, x;

 if (num <= 0 || num > VM_MAXCPU)
  panic("invalid number of vpids requested: %d", num);





 if ((procbased_ctls2 & PROCBASED2_ENABLE_VPID) == 0) {
  for (i = 0; i < num; i++)
   vpid[i] = 0;
  return;
 }




 for (i = 0; i < num; i++) {
  x = alloc_unr(vpid_unr);
  if (x == -1)
   break;
  else
   vpid[i] = x;
 }

 if (i < num) {
  atomic_add_int(&vpid_alloc_failed, 1);
  while (i-- > 0)
   vpid_free(vpid[i]);

  for (i = 0; i < num; i++)
   vpid[i] = i + 1;
 }
}
