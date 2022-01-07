
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usershell_test_data {int dummy; } ;
struct usershell {int * path; } ;
typedef enum test_methods { ____Placeholder_test_methods } test_methods ;


 int DO_2PASS_TEST (int ,struct usershell_test_data*,struct usershell_test_data*,int ,int *) ;
 scalar_t__ ENOENT ;
 int R_OK ;

 int TEST_DATA_APPEND (int ,struct usershell_test_data*,struct usershell*) ;
 int TEST_DATA_DESTROY (int ,struct usershell_test_data*) ;
 int TEST_DATA_INIT (int ,struct usershell_test_data*,int ,int ) ;

 int TEST_SNAPSHOT_FILE_READ (int ,char const*,struct usershell_test_data*,int ) ;
 int TEST_SNAPSHOT_FILE_WRITE (int ,char const*,struct usershell_test_data*,int ) ;
 int W_OK ;
 scalar_t__ access (char const*,int) ;
 int clone_usershell ;
 int compare_usershell ;
 int dump_usershell (struct usershell*) ;
 int endusershell () ;
 scalar_t__ errno ;
 int free_usershell ;
 int * getusershell () ;
 int printf (char*,...) ;
 int sdump_usershell ;
 int setusershell () ;
 int usershell ;
 int usershell_read_snapshot_func ;

__attribute__((used)) static int
run_tests(const char *snapshot_file, enum test_methods method)
{
 struct usershell_test_data td, td_snap;
 struct usershell ushell;
 int rv;

 rv = 0;

 TEST_DATA_INIT(usershell, &td, clone_usershell, free_usershell);
 TEST_DATA_INIT(usershell, &td_snap, clone_usershell, free_usershell);

 setusershell();
 while ((ushell.path = getusershell()) != ((void*)0)) {
  printf("usershell found:\n");
  dump_usershell(&ushell);
  TEST_DATA_APPEND(usershell, &td, &ushell);
 }
 endusershell();

 if (snapshot_file != ((void*)0)) {
  if (access(snapshot_file, W_OK | R_OK) != 0) {
   if (errno == ENOENT)
    method = 129;
   else {
    printf("can't access the snapshot file %s\n",
        snapshot_file);

    rv = -1;
    goto fin;
   }
  } else {
   rv = TEST_SNAPSHOT_FILE_READ(usershell, snapshot_file,
    &td_snap, usershell_read_snapshot_func);
   if (rv != 0) {
    printf("error reading snapshot file\n");
    goto fin;
   }
  }
 }

 switch (method) {
 case 128:
  rv = DO_2PASS_TEST(usershell, &td, &td_snap,
   compare_usershell, ((void*)0));
  break;
 case 129:
  if (snapshot_file != ((void*)0)) {
   rv = TEST_SNAPSHOT_FILE_WRITE(usershell, snapshot_file,
       &td, sdump_usershell);
  }
  break;
 default:
  rv = 0;
  break;
 }

fin:
 TEST_DATA_DESTROY(usershell, &td_snap);
 TEST_DATA_DESTROY(usershell, &td);

 return (rv);
}
