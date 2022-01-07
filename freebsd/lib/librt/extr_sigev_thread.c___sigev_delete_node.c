
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigev_node {int sn_flags; TYPE_1__* sn_tn; } ;
struct TYPE_2__ {scalar_t__ tn_refcount; int tn_thread; } ;


 int LIST_REMOVE (struct sigev_node*,int ) ;
 int SIGLIBRT ;
 int SNF_REMOVED ;
 int SNF_WORKING ;
 int __sigev_free (struct sigev_node*) ;
 int _pthread_kill (int ,int ) ;
 int sn_link ;

int
__sigev_delete_node(struct sigev_node *sn)
{
 LIST_REMOVE(sn, sn_link);

 if (--sn->sn_tn->tn_refcount == 0)
  _pthread_kill(sn->sn_tn->tn_thread, SIGLIBRT);
 if (sn->sn_flags & SNF_WORKING)
  sn->sn_flags |= SNF_REMOVED;
 else
  __sigev_free(sn);
 return (0);
}
