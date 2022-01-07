
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VM_MAXCPU ;
 int free_unr (int ,int) ;
 int panic (char*,int) ;
 int vpid_unr ;

__attribute__((used)) static void
vpid_free(int vpid)
{
 if (vpid < 0 || vpid > 0xffff)
  panic("vpid_free: invalid vpid %d", vpid);






 if (vpid > VM_MAXCPU)
  free_unr(vpid_unr, vpid);
}
