
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_ops {int ah_destroy; int ah_refresh; int ah_validate; int ah_marshal; int * ah_nextverf; } ;


 int authdes_destroy ;
 int authdes_marshal ;
 int * authdes_nextverf ;
 int authdes_ops_lock ;
 int authdes_refresh ;
 int authdes_validate ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct auth_ops *
authdes_ops(void)
{
 static struct auth_ops ops;



 mutex_lock(&authdes_ops_lock);
 if (ops.ah_nextverf == ((void*)0)) {
  ops.ah_nextverf = authdes_nextverf;
  ops.ah_marshal = authdes_marshal;
  ops.ah_validate = authdes_validate;
  ops.ah_refresh = authdes_refresh;
  ops.ah_destroy = authdes_destroy;
        }
 mutex_unlock(&authdes_ops_lock);
 return (&ops);
}
