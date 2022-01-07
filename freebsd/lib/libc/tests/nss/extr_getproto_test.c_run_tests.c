
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent_test_data {int dummy; } ;
typedef enum test_methods { ____Placeholder_test_methods } test_methods ;


 int DO_1PASS_TEST (int ,struct protoent_test_data*,int ,void*) ;
 int DO_2PASS_TEST (int ,struct protoent_test_data*,struct protoent_test_data*,int ,int *) ;
 scalar_t__ ENOENT ;
 int R_OK ;

 int TEST_DATA_DESTROY (int ,struct protoent_test_data*) ;
 int TEST_DATA_INIT (int ,struct protoent_test_data*,int ,int ) ;




 int TEST_SNAPSHOT_FILE_READ (int ,char const*,struct protoent_test_data*,int ) ;
 int TEST_SNAPSHOT_FILE_WRITE (int ,char const*,struct protoent_test_data*,int ) ;
 int W_OK ;
 scalar_t__ access (char const*,int) ;
 int clone_protoent ;
 int compare_protoent ;
 scalar_t__ errno ;
 int free_protoent ;
 int printf (char*,char const*) ;
 int protoent ;
 int protoent_fill_test_data (struct protoent_test_data*) ;
 int protoent_read_snapshot_func ;
 int protoent_test_getprotobyname ;
 int protoent_test_getprotobynumber ;
 int protoent_test_getprotoent ;
 int sdump_protoent ;

__attribute__((used)) static int
run_tests(const char *snapshot_file, enum test_methods method)
{
 struct protoent_test_data td, td_snap, td_2pass;
 int rv;

 TEST_DATA_INIT(protoent, &td, clone_protoent, free_protoent);
 TEST_DATA_INIT(protoent, &td_snap, clone_protoent, free_protoent);
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

   TEST_SNAPSHOT_FILE_READ(protoent, snapshot_file,
    &td_snap, protoent_read_snapshot_func);
  }
 }

 rv = protoent_fill_test_data(&td);
 if (rv == -1)
  return (-1);
 switch (method) {
 case 131:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(protoent, &td,
    protoent_test_getprotobyname, (void *)&td);
  else
   rv = DO_1PASS_TEST(protoent, &td_snap,
    protoent_test_getprotobyname, (void *)&td_snap);
  break;
 case 130:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(protoent, &td,
    protoent_test_getprotobynumber, (void *)&td);
  else
   rv = DO_1PASS_TEST(protoent, &td_snap,
    protoent_test_getprotobynumber, (void *)&td_snap);
  break;
 case 129:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(protoent, &td,
    protoent_test_getprotoent, (void *)&td);
  else
   rv = DO_2PASS_TEST(protoent, &td, &td_snap,
    compare_protoent, ((void*)0));
  break;
 case 128:
  TEST_DATA_INIT(protoent, &td_2pass, clone_protoent,
      free_protoent);
  rv = protoent_fill_test_data(&td_2pass);
  if (rv != -1)
   rv = DO_2PASS_TEST(protoent, &td, &td_2pass,
    compare_protoent, ((void*)0));
  TEST_DATA_DESTROY(protoent, &td_2pass);
  break;
 case 132:
  if (snapshot_file != ((void*)0))
   rv = TEST_SNAPSHOT_FILE_WRITE(protoent, snapshot_file,
       &td, sdump_protoent);
  break;
 default:
  rv = 0;
  break;
 }

fin:
 TEST_DATA_DESTROY(protoent, &td_snap);
 TEST_DATA_DESTROY(protoent, &td);

 return (rv);
}
