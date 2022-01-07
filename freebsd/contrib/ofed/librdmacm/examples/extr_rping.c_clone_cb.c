
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rping_cb {TYPE_1__* child_cm_id; } ;
struct TYPE_2__ {struct rping_cb* context; } ;


 struct rping_cb* malloc (int) ;
 int memset (struct rping_cb*,int ,int) ;

__attribute__((used)) static struct rping_cb *clone_cb(struct rping_cb *listening_cb)
{
 struct rping_cb *cb = malloc(sizeof *cb);
 if (!cb)
  return ((void*)0);
 memset(cb, 0, sizeof *cb);
 *cb = *listening_cb;
 cb->child_cm_id->context = cb;
 return cb;
}
