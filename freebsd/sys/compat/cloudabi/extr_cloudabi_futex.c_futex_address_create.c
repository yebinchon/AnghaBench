
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct futex_address {int fa_key; } ;
typedef int cloudabi_scope_t ;


 int AUTO_SHARE ;


 int EINVAL ;
 int KASSERT (int,char*) ;
 int THREAD_SHARE ;
 int TYPE_FUTEX ;
 struct thread* curthread ;
 int umtx_key_get (void const*,int ,int ,int *) ;

__attribute__((used)) static int
futex_address_create(struct futex_address *fa, struct thread *td,
    const void *object, cloudabi_scope_t scope)
{

 KASSERT(td == curthread,
     ("Can only create umtx keys for the current thread"));
 switch (scope) {
 case 129:
  return (umtx_key_get(object, TYPE_FUTEX, THREAD_SHARE,
      &fa->fa_key));
 case 128:
  return (umtx_key_get(object, TYPE_FUTEX, AUTO_SHARE,
      &fa->fa_key));
 default:
  return (EINVAL);
 }
}
