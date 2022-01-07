
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent_data {scalar_t__ stayopen; } ;


 int _endhosthtent (struct hostent_data*) ;
 int free (struct hostent_data*) ;

__attribute__((used)) static void
hostent_data_free(void *ptr)
{
 struct hostent_data *hed = ptr;

 if (hed == ((void*)0))
  return;
 hed->stayopen = 0;
 _endhosthtent(hed);
 free(hed);
}
