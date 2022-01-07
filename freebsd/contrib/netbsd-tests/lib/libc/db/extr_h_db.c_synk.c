
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* sync ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ DB ;


 int err (int,char*,int ) ;
 int flags ;
 int lineno ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void
synk(DB *dbp)
{
 switch ((*dbp->sync)(dbp, flags)) {
 case 0:
  break;
 case -1:
  err(1, "line %zu: synk failed", lineno);

 }
}
