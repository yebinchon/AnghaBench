
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_ops {int ah_destroy; int ah_refresh; int ah_validate; int ah_marshal; int * ah_nextverf; } ;


 int authunix_destroy ;
 int authunix_marshal ;
 int * authunix_nextverf ;
 int authunix_refresh ;
 int authunix_validate ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ops_lock ;

__attribute__((used)) static struct auth_ops *
authunix_ops(void)
{
 static struct auth_ops ops;



 mutex_lock(&ops_lock);
 if (ops.ah_nextverf == ((void*)0)) {
  ops.ah_nextverf = authunix_nextverf;
  ops.ah_marshal = authunix_marshal;
  ops.ah_validate = authunix_validate;
  ops.ah_refresh = authunix_refresh;
  ops.ah_destroy = authunix_destroy;
 }
 mutex_unlock(&ops_lock);
 return (&ops);
}
