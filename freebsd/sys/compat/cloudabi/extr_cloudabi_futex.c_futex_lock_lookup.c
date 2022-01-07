
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct futex_lock {int dummy; } ;
struct futex_address {int dummy; } ;
typedef int cloudabi_scope_t ;
typedef int cloudabi_lock_t ;


 int futex_address_create (struct futex_address*,struct thread*,int const*,int ) ;
 int futex_global_lock ;
 struct futex_lock* futex_lock_lookup_locked (struct futex_address*) ;
 int sx_xlock (int *) ;

__attribute__((used)) static int
futex_lock_lookup(struct thread *td, const cloudabi_lock_t *address,
    cloudabi_scope_t scope, struct futex_lock **flret)
{
 struct futex_address fa;
 int error;

 error = futex_address_create(&fa, td, address, scope);
 if (error != 0)
  return (error);

 sx_xlock(&futex_global_lock);
 *flret = futex_lock_lookup_locked(&fa);
 return (0);
}
