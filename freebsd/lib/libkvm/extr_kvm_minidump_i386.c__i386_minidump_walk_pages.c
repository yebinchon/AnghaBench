
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int u_long ;
struct i386_iter {int dummy; } ;
typedef int kvm_walk_pages_cb_t ;
typedef int kvm_t ;


 int I386_PAGE_SIZE ;
 int _i386_iterator_init (struct i386_iter*,int *) ;
 scalar_t__ _i386_iterator_next (struct i386_iter*,int *,int *,int *,int *) ;
 int _kvm_visit_cb (int *,int *,void*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
_i386_minidump_walk_pages(kvm_t *kd, kvm_walk_pages_cb_t *cb, void *arg)
{
 struct i386_iter it;
 u_long dva, pa, va;
 vm_prot_t prot;

 _i386_iterator_init(&it, kd);
 while (_i386_iterator_next(&it, &pa, &va, &dva, &prot)) {
  if (!_kvm_visit_cb(kd, cb, arg, pa, va, dva,
      prot, I386_PAGE_SIZE, 0)) {
   return (0);
  }
 }
 return (1);
}
