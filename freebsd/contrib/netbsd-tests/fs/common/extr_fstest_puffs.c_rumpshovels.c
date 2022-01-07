
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffstestargs {int dummy; } ;
typedef int pthread_t ;


 int err (int,char*) ;
 int pthread_create (int *,int *,int ,struct puffstestargs*) ;
 int pthread_detach (int ) ;
 int readshovel ;
 int rump_init () ;
 int writeshovel ;

__attribute__((used)) static void
rumpshovels(struct puffstestargs *args)
{
 pthread_t pt;
 int rv;

 if ((rv = rump_init()) == -1)
  err(1, "rump_init");

 if (pthread_create(&pt, ((void*)0), readshovel, args) == -1)
  err(1, "read shovel");
 pthread_detach(pt);

 if (pthread_create(&pt, ((void*)0), writeshovel, args) == -1)
  err(1, "write shovel");
 pthread_detach(pt);
}
