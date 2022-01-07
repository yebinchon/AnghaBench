
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent_data {int dummy; } ;


 struct hostent_data* __hostent_data_init () ;
 int _endhostdnsent () ;
 int _endhosthtent (struct hostent_data*) ;

void
endhostent(void)
{
 struct hostent_data *hed;

 if ((hed = __hostent_data_init()) == ((void*)0))
  return;
 _endhosthtent(hed);
 _endhostdnsent();
}
