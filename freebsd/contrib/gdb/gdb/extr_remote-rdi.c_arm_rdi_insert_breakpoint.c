
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct local_bp_list_entry {struct local_bp_list_entry* next; int point; int addr; } ;
typedef int PointHandle ;
typedef int CORE_ADDR ;


 int RDIError_NoError ;
 int RDIPoint_16Bit ;
 int RDIPoint_EQ ;
 int angel_RDI_setbreak (int ,int,int ,int *) ;
 scalar_t__ arm_pc_is_thumb (int ) ;
 scalar_t__ arm_pc_is_thumb_dummy (int ) ;
 struct local_bp_list_entry* local_bp_list ;
 int printf_filtered (char*,int ) ;
 int rdi_error_message (int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static int
arm_rdi_insert_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  int rslt;
  PointHandle point;
  struct local_bp_list_entry *entry;
  int type = RDIPoint_EQ;

  if (arm_pc_is_thumb (addr) || arm_pc_is_thumb_dummy (addr))
    type |= RDIPoint_16Bit;
  rslt = angel_RDI_setbreak (addr, type, 0, &point);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_setbreak: %s\n", rdi_error_message (rslt));
    }
  entry =
    (struct local_bp_list_entry *) xmalloc (sizeof (struct local_bp_list_entry));
  entry->addr = addr;
  entry->point = point;
  entry->next = local_bp_list;
  local_bp_list = entry;
  return rslt;
}
