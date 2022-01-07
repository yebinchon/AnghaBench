
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get ) (TYPE_1__*,int *,int *,int ) ;} ;
typedef int DBT ;
typedef TYPE_1__ DB ;


 int err (int,char*,int ) ;
 int errx (int,char*,int ) ;
 int flags ;
 int lineno ;
 int stub1 (TYPE_1__*,int *,int *,int ) ;

__attribute__((used)) static void
getdata(DB *dbp, DBT *kp, DBT *dp)
{
 switch ((*dbp->get)(dbp, kp, dp, flags)) {
 case 0:
  return;
 case -1:
  err(1, "line %zu: getdata failed", lineno);

 case 1:
  errx(1, "line %zu: getdata failed, no such key", lineno);

 }
}
