
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd_test_data {int dummy; } ;
typedef enum test_methods { ____Placeholder_test_methods } test_methods ;


 int DO_1PASS_TEST (int ,struct passwd_test_data*,int ,void*) ;
 int DO_2PASS_TEST (int ,struct passwd_test_data*,struct passwd_test_data*,int ,int *) ;
 scalar_t__ ENOENT ;
 int R_OK ;

 int TEST_DATA_DESTROY (int ,struct passwd_test_data*) ;
 int TEST_DATA_INIT (int ,struct passwd_test_data*,int ,int ) ;




 int TEST_SNAPSHOT_FILE_READ (int ,char const*,struct passwd_test_data*,int ) ;
 int TEST_SNAPSHOT_FILE_WRITE (int ,char const*,struct passwd_test_data*,int ) ;
 int W_OK ;
 scalar_t__ access (char const*,int) ;
 int clone_passwd ;
 int compare_passwd ;
 scalar_t__ errno ;
 int free_passwd ;
 int passwd ;
 int passwd_fill_test_data (struct passwd_test_data*) ;
 int passwd_read_snapshot_func ;
 int passwd_test_getpwent ;
 int passwd_test_getpwnam ;
 int passwd_test_getpwuid ;
 int printf (char*,char const*) ;
 int sdump_passwd ;

__attribute__((used)) static int
run_tests(const char *snapshot_file, enum test_methods method)
{
 struct passwd_test_data td, td_snap, td_2pass;
 int rv;

 TEST_DATA_INIT(passwd, &td, clone_passwd, free_passwd);
 TEST_DATA_INIT(passwd, &td_snap, clone_passwd, free_passwd);
 if (snapshot_file != ((void*)0)) {
  if (access(snapshot_file, W_OK | R_OK) != 0) {
   if (errno == ENOENT)
    method = 132;
   else {
    printf("can't access the file %s\n",
        snapshot_file);
    rv = -1;
    goto fin;
   }
  } else {
   if (method == 132) {
    rv = 0;
    goto fin;
   }

   TEST_SNAPSHOT_FILE_READ(passwd, snapshot_file,
    &td_snap, passwd_read_snapshot_func);
  }
 }

 rv = passwd_fill_test_data(&td);
 if (rv == -1)
  return (-1);

 switch (method) {
 case 129:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(passwd, &td,
    passwd_test_getpwnam, (void *)&td);
  else
   rv = DO_1PASS_TEST(passwd, &td_snap,
    passwd_test_getpwnam, (void *)&td_snap);
  break;
 case 128:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(passwd, &td,
    passwd_test_getpwuid, (void *)&td);
  else
   rv = DO_1PASS_TEST(passwd, &td_snap,
    passwd_test_getpwuid, (void *)&td_snap);
  break;
 case 131:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(passwd, &td, passwd_test_getpwent,
    (void *)&td);
  else
   rv = DO_2PASS_TEST(passwd, &td, &td_snap,
    compare_passwd, ((void*)0));
  break;
 case 130:
  TEST_DATA_INIT(passwd, &td_2pass, clone_passwd, free_passwd);
  rv = passwd_fill_test_data(&td_2pass);
  if (rv != -1)
   rv = DO_2PASS_TEST(passwd, &td, &td_2pass,
       compare_passwd, ((void*)0));
  TEST_DATA_DESTROY(passwd, &td_2pass);
  break;
 case 132:
  if (snapshot_file != ((void*)0))
   rv = TEST_SNAPSHOT_FILE_WRITE(passwd, snapshot_file,
       &td, sdump_passwd);
  break;
 default:
  rv = 0;
  break;
 }

fin:
 TEST_DATA_DESTROY(passwd, &td_snap);
 TEST_DATA_DESTROY(passwd, &td);

 return (rv);
}
