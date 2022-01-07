
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcent_test_data {int dummy; } ;
typedef enum test_methods { ____Placeholder_test_methods } test_methods ;


 int DO_1PASS_TEST (int ,struct rpcent_test_data*,int ,void*) ;
 int DO_2PASS_TEST (int ,struct rpcent_test_data*,struct rpcent_test_data*,int ,int *) ;
 scalar_t__ ENOENT ;
 int R_OK ;

 int TEST_DATA_DESTROY (int ,struct rpcent_test_data*) ;
 int TEST_DATA_INIT (int ,struct rpcent_test_data*,int ,int ) ;




 int TEST_SNAPSHOT_FILE_READ (int ,char const*,struct rpcent_test_data*,int ) ;
 int TEST_SNAPSHOT_FILE_WRITE (int ,char const*,struct rpcent_test_data*,int ) ;
 int W_OK ;
 scalar_t__ access (char const*,int) ;
 int clone_rpcent ;
 int compare_rpcent ;
 scalar_t__ errno ;
 int free_rpcent ;
 int printf (char*,char const*) ;
 int rpcent ;
 int rpcent_fill_test_data (struct rpcent_test_data*) ;
 int rpcent_read_snapshot_func ;
 int rpcent_test_getrpcbyname ;
 int rpcent_test_getrpcbynumber ;
 int rpcent_test_getrpcent ;
 int sdump_rpcent ;

__attribute__((used)) static int
run_tests(const char *snapshot_file, enum test_methods method)
{
 struct rpcent_test_data td, td_snap, td_2pass;
 int rv;

 TEST_DATA_INIT(rpcent, &td, clone_rpcent, free_rpcent);
 TEST_DATA_INIT(rpcent, &td_snap, clone_rpcent, free_rpcent);
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

   TEST_SNAPSHOT_FILE_READ(rpcent, snapshot_file,
    &td_snap, rpcent_read_snapshot_func);
  }
 }

 rv = rpcent_fill_test_data(&td);
 if (rv == -1)
  return (-1);
 switch (method) {
 case 131:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(rpcent, &td,
    rpcent_test_getrpcbyname, (void *)&td);
  else
   rv = DO_1PASS_TEST(rpcent, &td_snap,
    rpcent_test_getrpcbyname, (void *)&td_snap);
  break;
 case 130:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(rpcent, &td,
    rpcent_test_getrpcbynumber, (void *)&td);
  else
   rv = DO_1PASS_TEST(rpcent, &td_snap,
    rpcent_test_getrpcbynumber, (void *)&td_snap);
  break;
 case 129:
  if (snapshot_file == ((void*)0))
   rv = DO_1PASS_TEST(rpcent, &td, rpcent_test_getrpcent,
    (void *)&td);
  else
   rv = DO_2PASS_TEST(rpcent, &td, &td_snap,
    compare_rpcent, ((void*)0));
  break;
 case 128:
   TEST_DATA_INIT(rpcent, &td_2pass, clone_rpcent, free_rpcent);
   rv = rpcent_fill_test_data(&td_2pass);
   if (rv != -1)
    rv = DO_2PASS_TEST(rpcent, &td, &td_2pass,
     compare_rpcent, ((void*)0));
   TEST_DATA_DESTROY(rpcent, &td_2pass);
  break;
 case 132:
  if (snapshot_file != ((void*)0))
      rv = TEST_SNAPSHOT_FILE_WRITE(rpcent, snapshot_file, &td,
   sdump_rpcent);
  break;
 default:
  rv = 0;
  break;
 }

fin:
 TEST_DATA_DESTROY(rpcent, &td_snap);
 TEST_DATA_DESTROY(rpcent, &td);

 return (rv);
}
