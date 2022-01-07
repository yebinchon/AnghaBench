
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent_test_data {int dummy; } ;
struct servent {int dummy; } ;


 int TEST_DATA_APPEND (int ,struct servent_test_data*,struct servent*) ;
 int endservent () ;
 struct servent* getservent () ;
 int servent ;
 scalar_t__ servent_test_correctness (struct servent*,int *) ;
 int setservent (int) ;

__attribute__((used)) static int
servent_fill_test_data(struct servent_test_data *td)
{
 struct servent *serv;

 setservent(1);
 while ((serv = getservent()) != ((void*)0)) {
  if (servent_test_correctness(serv, ((void*)0)) == 0)
   TEST_DATA_APPEND(servent, td, serv);
  else
   return (-1);
 }
 endservent();

 return (0);
}
