
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd_test_data {int dummy; } ;
struct passwd {int dummy; } ;


 int * TEST_DATA_FIND (int ,struct passwd_test_data*,struct passwd*,int ,int *) ;
 int compare_passwd ;
 int passwd ;

__attribute__((used)) static int
passwd_check_ambiguity(struct passwd_test_data *td, struct passwd *pwd)
{

 return (TEST_DATA_FIND(passwd, td, pwd, compare_passwd,
  ((void*)0)) != ((void*)0) ? 0 : -1);
}
