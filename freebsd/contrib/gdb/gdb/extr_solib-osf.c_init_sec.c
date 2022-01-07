
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct so_list {TYPE_1__* lm_info; } ;
struct lm_sec {char const* name; void* offset; void* nameaddr; } ;
struct TYPE_2__ {struct lm_sec* secs; } ;
typedef void* CORE_ADDR ;



__attribute__((used)) static void
init_sec (struct so_list *so, int secidx, CORE_ADDR nameaddr,
   const char *name, CORE_ADDR vaddr, CORE_ADDR mapaddr)
{
  struct lm_sec *lms;

  lms = so->lm_info->secs + secidx;
  lms->nameaddr = nameaddr;
  lms->name = name;
  lms->offset = mapaddr - vaddr;
}
