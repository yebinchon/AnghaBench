
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_cap_ioctls_limit_args {int dummy; } ;


 int ENOSYS ;

int
freebsd32_cap_ioctls_limit(struct thread *td,
    struct freebsd32_cap_ioctls_limit_args *uap)
{

 return (ENOSYS);
}
