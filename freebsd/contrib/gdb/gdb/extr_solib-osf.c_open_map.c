
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct read_map_ctxt {int tail; int next; int proc; } ;
struct TYPE_2__ {int tail; int head; } ;
typedef TYPE_1__ ldr_context_t ;
typedef int CORE_ADDR ;


 int LDR_NULL_MODULE ;
 int RLD_CONTEXT_ADDRESS ;
 int inferior_ptid ;
 scalar_t__ ldr_xattach (int ) ;
 int ptid_get_pid (int ) ;
 scalar_t__ target_read_memory (int ,char*,int) ;

__attribute__((used)) static int
open_map (struct read_map_ctxt *ctxt)
{
  CORE_ADDR ldr_context_addr, prev, next;
  ldr_context_t ldr_context;

  if (target_read_memory ((CORE_ADDR) RLD_CONTEXT_ADDRESS,
     (char *) &ldr_context_addr,
     sizeof (CORE_ADDR)) != 0)
    return 0;
  if (target_read_memory (ldr_context_addr,
     (char *) &ldr_context,
     sizeof (ldr_context_t)) != 0)
    return 0;
  ctxt->next = ldr_context.head;
  ctxt->tail = ldr_context.tail;

  return 1;
}
