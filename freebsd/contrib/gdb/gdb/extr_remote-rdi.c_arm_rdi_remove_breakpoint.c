
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_bp_list_entry {scalar_t__ addr; struct local_bp_list_entry* next; int point; } ;
typedef int PointHandle ;
typedef scalar_t__ CORE_ADDR ;


 int RDIError_NoError ;
 int angel_RDI_clearbreak (int ) ;
 struct local_bp_list_entry* local_bp_list ;
 int printf_filtered (char*,int ) ;
 int rdi_error_message (int) ;
 int xfree (struct local_bp_list_entry*) ;

__attribute__((used)) static int
arm_rdi_remove_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  int rslt;
  PointHandle point;
  struct local_bp_list_entry **entryp, *dead;

  for (entryp = &local_bp_list; *entryp != ((void*)0); entryp = &(*entryp)->next)
    if ((*entryp)->addr == addr)
      break;

  if (*entryp)
    {
      dead = *entryp;
      rslt = angel_RDI_clearbreak (dead->point);
      if (rslt != RDIError_NoError)
 printf_filtered ("RDI_clearbreak: %s\n", rdi_error_message (rslt));


      *entryp = dead->next;
      xfree (dead);
    }

  return 0;
}
