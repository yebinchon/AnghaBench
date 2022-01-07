
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_ops {int ah_destroy; int ah_refresh; int ah_validate; int ah_marshal; int * ah_nextverf; } ;


 int authnone_destroy ;
 int authnone_marshal ;
 int authnone_refresh ;
 int authnone_validate ;
 int * authnone_verf ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ops_lock ;

__attribute__((used)) static struct auth_ops *
authnone_ops(void)
{
 static struct auth_ops ops;



 mutex_lock(&ops_lock);
 if (ops.ah_nextverf == ((void*)0)) {
  ops.ah_nextverf = authnone_verf;
  ops.ah_marshal = authnone_marshal;
  ops.ah_validate = authnone_validate;
  ops.ah_refresh = authnone_refresh;
  ops.ah_destroy = authnone_destroy;
 }
 mutex_unlock(&ops_lock);
 return (&ops);
}
