
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netent_data {int dummy; } ;


 struct netent_data* __netent_data_init () ;
 int _setnetdnsent (int) ;
 int _setnethtent (int,struct netent_data*) ;

void
setnetent(int stayopen)
{
 struct netent_data *ned;

 if ((ned = __netent_data_init()) == ((void*)0))
  return;
 _setnethtent(stayopen, ned);
 _setnetdnsent(stayopen);
}
