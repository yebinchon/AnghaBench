
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_test_data {int dummy; } ;
struct group {int dummy; } ;


 int * TEST_DATA_FIND (int ,struct group_test_data*,struct group*,int ,int *) ;
 int compare_group ;
 int group ;

__attribute__((used)) static int
group_check_ambiguity(struct group_test_data *td, struct group *pwd)
{

 return (TEST_DATA_FIND(group, td, pwd, compare_group,
  ((void*)0)) != ((void*)0) ? 0 : -1);
}
