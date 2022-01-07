
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent_test_data {int dummy; } ;
struct protoent {int dummy; } ;


 int * TEST_DATA_FIND (int ,struct protoent_test_data*,struct protoent*,int ,int *) ;
 int compare_protoent ;
 int protoent ;

__attribute__((used)) static int
protoent_check_ambiguity(struct protoent_test_data *td, struct protoent *pe)
{

 return (TEST_DATA_FIND(protoent, td, pe, compare_protoent,
  ((void*)0)) != ((void*)0) ? 0 : -1);
}
