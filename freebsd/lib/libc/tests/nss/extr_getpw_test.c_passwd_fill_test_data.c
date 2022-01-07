
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd_test_data {int dummy; } ;
struct passwd {int dummy; } ;


 int TEST_DATA_APPEND (int ,struct passwd_test_data*,struct passwd*) ;
 int endpwent () ;
 struct passwd* getpwent () ;
 int passwd ;
 scalar_t__ passwd_test_correctness (struct passwd*,int *) ;
 int setpassent (int) ;

__attribute__((used)) static int
passwd_fill_test_data(struct passwd_test_data *td)
{
 struct passwd *pwd;

 setpassent(1);
 while ((pwd = getpwent()) != ((void*)0)) {
  if (passwd_test_correctness(pwd, ((void*)0)) == 0)
   TEST_DATA_APPEND(passwd, td, pwd);
  else
   return (-1);
 }
 endpwent();

 return (0);
}
