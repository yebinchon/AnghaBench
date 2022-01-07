
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent_test_data {int dummy; } ;
struct servent {int dummy; } ;


 int * TEST_DATA_FIND (int ,struct servent_test_data*,struct servent*,int ,int *) ;
 int compare_servent ;
 int servent ;

__attribute__((used)) static int
servent_check_ambiguity(struct servent_test_data *td, struct servent *serv)
{

 return (TEST_DATA_FIND(servent, td, serv, compare_servent,
  ((void*)0)) != ((void*)0) ? 0 : -1);
}
