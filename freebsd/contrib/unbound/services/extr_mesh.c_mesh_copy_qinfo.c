
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct regional {int dummy; } ;
struct query_info {int qname_len; int * qname; } ;
struct TYPE_4__ {int query_flags; int qinfo; TYPE_1__* env; } ;
struct mesh_state {TYPE_2__ s; } ;
struct TYPE_3__ {struct regional* scratch; } ;


 void* regional_alloc_init (struct regional*,int *,int) ;

__attribute__((used)) static void
mesh_copy_qinfo(struct mesh_state* mstate, struct query_info** qinfop,
 uint16_t* qflags)
{
 struct regional* region = mstate->s.env->scratch;
 struct query_info* qinfo;

 qinfo = regional_alloc_init(region, &mstate->s.qinfo, sizeof(*qinfo));
 if(!qinfo)
  return;
 qinfo->qname = regional_alloc_init(region, qinfo->qname,
  qinfo->qname_len);
 if(!qinfo->qname)
  return;
 *qinfop = qinfo;
 *qflags = mstate->s.query_flags;
}
