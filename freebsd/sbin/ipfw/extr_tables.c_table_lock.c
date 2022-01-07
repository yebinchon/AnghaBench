
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xi ;
struct TYPE_4__ {int flags; int mflags; } ;
typedef TYPE_1__ ipfw_xtable_info ;
typedef int ipfw_obj_header ;


 int EX_OSERR ;
 int IPFW_TGFLAGS_LOCKED ;
 int IPFW_TMFLAGS_LOCK ;
 int err (int ,char*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ table_do_modify (int *,TYPE_1__*) ;

__attribute__((used)) static void
table_lock(ipfw_obj_header *oh, int lock)
{
 ipfw_xtable_info xi;

 memset(&xi, 0, sizeof(xi));

 xi.mflags |= IPFW_TMFLAGS_LOCK;
 xi.flags |= (lock != 0) ? IPFW_TGFLAGS_LOCKED : 0;

 if (table_do_modify(oh, &xi) != 0)
  err(EX_OSERR, "Table %s failed", lock != 0 ? "lock" : "unlock");
}
