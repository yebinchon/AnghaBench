
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct protoent_data {int dummy; } ;


 int NS_UNAVAIL ;
 int __endprotoent_p (struct protoent_data*) ;
 struct protoent_data* __protoent_data_init () ;

__attribute__((used)) static int
files_endprotoent(void *retval, void *mdata, va_list ap)
{
 struct protoent_data *ped;

 if ((ped = __protoent_data_init()) == ((void*)0))
  return (NS_UNAVAIL);

 __endprotoent_p(ped);
 return (NS_UNAVAIL);
}
