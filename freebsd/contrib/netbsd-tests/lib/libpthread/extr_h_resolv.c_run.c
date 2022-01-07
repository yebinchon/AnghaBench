
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int err (int,char*) ;
 scalar_t__ pthread_create (int *,int *,int ,int*) ;
 int pthread_self () ;
 int resolvloop ;

__attribute__((used)) static void
run(int *nhosts)
{
 pthread_t self = pthread_self();
 if (pthread_create(&self, ((void*)0), resolvloop, nhosts) != 0)
  err(1, "pthread_create");
}
