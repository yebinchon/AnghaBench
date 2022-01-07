
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_test_data {int dummy; } ;
typedef enum test_methods { ____Placeholder_test_methods } test_methods ;


 int DO_1PASS_TEST (int ,struct group_test_data*,int ,void*) ;
 int DO_2PASS_TEST (int ,struct group_test_data*,struct group_test_data*,int ,int *) ;
 scalar_t__ ENOENT ;
 int R_OK ;

 int TEST_DATA_DESTROY (int ,struct group_test_data*) ;
 int TEST_DATA_INIT (int ,struct group_test_data*,int ,int ) ;




 int TEST_SNAPSHOT_FILE_READ (int ,char const*,struct group_test_data*,int ) ;
 int TEST_SNAPSHOT_FILE_WRITE (int ,char const*,struct group_test_data*,int ) ;
 int W_OK ;
 scalar_t__ access (char const*,int) ;
 int clone_group ;
 int compare_group ;
 scalar_t__ errno ;
 int free_group ;
 int group ;
 int group_fill_test_data (struct group_test_data*) ;
 int group_read_snapshot_func ;
 int group_test_getgrent ;
 int group_test_getgrgid ;
 int group_test_getgrnam ;
 int printf (char*,char const*) ;
 int sdump_group ;

__attribute__((used)) static int
run_tests(const char *snapshot_file, enum test_methods method)
{
 struct group_test_data td, td_snap, td_2pass;
 int rv;

 TEST_DATA_INIT(group, &td, clone_group, free_group);
 TEST_DATA_INIT(group, &td_snap, clone_group, free_group);
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

   TEST_SNAPSHOT_FILE_READ(group, snapshot_file,
    &td_snap, group_read_snapshot_func);
  }
 }

 rv = group_fill_test_data(&td);
 if (rv == -1)
  return (-1);
 switch (method) {
 case 128:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(group, &td,
    group_test_getgrnam, (void *)&td);
  else
   rv = DO_1PASS_TEST(group, &td_snap,
    group_test_getgrnam, (void *)&td_snap);
  break;
 case 129:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(group, &td,
    group_test_getgrgid, (void *)&td);
  else
   rv = DO_1PASS_TEST(group, &td_snap,
    group_test_getgrgid, (void *)&td_snap);
  break;
 case 131:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(group, &td, group_test_getgrent,
    (void *)&td);
  else
   rv = DO_2PASS_TEST(group, &td, &td_snap,
    compare_group, ((void*)0));
  break;
 case 130:
   TEST_DATA_INIT(group, &td_2pass, clone_group, free_group);
   rv = group_fill_test_data(&td_2pass);
   if (rv != -1)
    rv = DO_2PASS_TEST(group, &td, &td_2pass,
     compare_group, ((void*)0));
   TEST_DATA_DESTROY(group, &td_2pass);
  break;
 case 132:
  if (snapshot_file != ((void*)0))
   rv = TEST_SNAPSHOT_FILE_WRITE(group, snapshot_file, &td,
       sdump_group);
  break;
 default:
  rv = 0;
  break;
 }

fin:
 TEST_DATA_DESTROY(group, &td_snap);
 TEST_DATA_DESTROY(group, &td);

 return (rv);
}
