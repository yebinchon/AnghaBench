
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent_test_data {int dummy; } ;
typedef enum test_methods { ____Placeholder_test_methods } test_methods ;


 int DO_1PASS_TEST (int ,struct servent_test_data*,int ,void*) ;
 int DO_2PASS_TEST (int ,struct servent_test_data*,struct servent_test_data*,int ,int *) ;
 scalar_t__ ENOENT ;
 int R_OK ;

 int TEST_DATA_DESTROY (int ,struct servent_test_data*) ;
 int TEST_DATA_INIT (int ,struct servent_test_data*,int ,int ) ;




 int TEST_SNAPSHOT_FILE_READ (int ,char const*,struct servent_test_data*,int ) ;
 int TEST_SNAPSHOT_FILE_WRITE (int ,char const*,struct servent_test_data*,int ) ;
 int W_OK ;
 scalar_t__ access (char const*,int) ;
 int clone_servent ;
 int compare_servent ;
 scalar_t__ errno ;
 int free_servent ;
 int printf (char*,char const*) ;
 int sdump_servent ;
 int servent ;
 int servent_fill_test_data (struct servent_test_data*) ;
 int servent_read_snapshot_func ;
 int servent_test_getservbyname ;
 int servent_test_getservbyport ;
 int servent_test_getservent ;

__attribute__((used)) static int
run_tests(const char *snapshot_file, enum test_methods method)
{
 struct servent_test_data td, td_snap, td_2pass;
 int rv;

 TEST_DATA_INIT(servent, &td, clone_servent, free_servent);
 TEST_DATA_INIT(servent, &td_snap, clone_servent, free_servent);
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

   TEST_SNAPSHOT_FILE_READ(servent, snapshot_file,
    &td_snap, servent_read_snapshot_func);
  }
 }

 rv = servent_fill_test_data(&td);
 if (rv == -1)
  return (-1);
 switch (method) {
 case 131:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(servent, &td,
    servent_test_getservbyname, (void *)&td);
  else
   rv = DO_1PASS_TEST(servent, &td_snap,
    servent_test_getservbyname, (void *)&td_snap);
  break;
 case 130:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(servent, &td,
    servent_test_getservbyport, (void *)&td);
  else
   rv = DO_1PASS_TEST(servent, &td_snap,
    servent_test_getservbyport, (void *)&td_snap);
  break;
 case 129:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(servent, &td, servent_test_getservent,
    (void *)&td);
  else
   rv = DO_2PASS_TEST(servent, &td, &td_snap,
    compare_servent, ((void*)0));
  break;
 case 128:
   TEST_DATA_INIT(servent, &td_2pass, clone_servent, free_servent);
   rv = servent_fill_test_data(&td_2pass);
   if (rv != -1)
    rv = DO_2PASS_TEST(servent, &td, &td_2pass,
     compare_servent, ((void*)0));
   TEST_DATA_DESTROY(servent, &td_2pass);
  break;
 case 132:
  if (snapshot_file != ((void*)0))
      rv = TEST_SNAPSHOT_FILE_WRITE(servent, snapshot_file, &td,
   sdump_servent);
  break;
 default:
  rv = 0;
  break;
 }

fin:
 TEST_DATA_DESTROY(servent, &td_snap);
 TEST_DATA_DESTROY(servent, &td);

 return (rv);
}
