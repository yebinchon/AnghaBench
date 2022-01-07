
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfiscsi_target {int ct_refcount; } ;


 int refcount_acquire (int *) ;

__attribute__((used)) static void
cfiscsi_target_hold(struct cfiscsi_target *ct)
{

 refcount_acquire(&ct->ct_refcount);
}
