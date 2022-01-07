
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent_test_data {int dummy; } ;
struct protoent {int dummy; } ;


 int TEST_DATA_APPEND (int ,struct protoent_test_data*,struct protoent*) ;
 int endprotoent () ;
 struct protoent* getprotoent () ;
 int protoent ;
 scalar_t__ protoent_test_correctness (struct protoent*,int *) ;
 int setprotoent (int) ;

__attribute__((used)) static int
protoent_fill_test_data(struct protoent_test_data *td)
{
 struct protoent *pe;

 setprotoent(1);
 while ((pe = getprotoent()) != ((void*)0)) {
  if (protoent_test_correctness(pe, ((void*)0)) == 0)
   TEST_DATA_APPEND(protoent, td, pe);
  else
   return (-1);
 }
 endprotoent();

 return (0);
}
