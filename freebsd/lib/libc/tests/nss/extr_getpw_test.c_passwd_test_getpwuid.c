
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd_test_data {int dummy; } ;
struct passwd {int pw_uid; } ;


 scalar_t__ compare_passwd (struct passwd*,struct passwd*,int *) ;
 int dump_passwd (struct passwd*) ;
 struct passwd* getpwuid (int ) ;
 scalar_t__ passwd_check_ambiguity (struct passwd_test_data*,struct passwd*) ;
 scalar_t__ passwd_test_correctness (struct passwd*,int *) ;
 int printf (char*) ;

__attribute__((used)) static int
passwd_test_getpwuid(struct passwd *pwd_model, void *mdata)
{
 struct passwd *pwd;






 pwd = getpwuid(pwd_model->pw_uid);
 if ((passwd_test_correctness(pwd, ((void*)0)) != 0) ||
     ((compare_passwd(pwd, pwd_model, ((void*)0)) != 0) &&
     (passwd_check_ambiguity((struct passwd_test_data *)mdata, pwd)
     != 0))) {



  return (-1);
 } else {



  return (0);
 }
}
