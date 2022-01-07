
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct addrinfo_test_data {int dummy; } ;
struct addrinfo {int dummy; } ;
struct TYPE_3__ {int ai_family; int ai_flags; } ;


 int AI_CANONNAME ;
 int ATF_CHECK (int) ;
 int ATF_REQUIRE (int ) ;
 int ATF_REQUIRE_MSG (int,char*,char*) ;
 int DO_2PASS_TEST (int ,struct addrinfo_test_data*,struct addrinfo_test_data*,int ,int *) ;
 scalar_t__ ENOENT ;
 int R_OK ;

 int TEST_DATA_DESTROY (int ,struct addrinfo_test_data*) ;
 int TEST_DATA_INIT (int ,struct addrinfo_test_data*,int ,int ) ;

 int TEST_SNAPSHOT_FILE_READ (int ,char const*,struct addrinfo_test_data*,int ) ;
 int TEST_SNAPSHOT_FILE_WRITE (int ,char const*,struct addrinfo_test_data*,int ) ;
 int W_OK ;
 scalar_t__ access (char const*,int) ;
 int addrinfo ;
 int addrinfo_read_hostlist_func ;
 int addrinfo_read_snapshot_func ;
 int clone_addrinfo ;
 int compare_addrinfo ;
 scalar_t__ errno ;
 int free (char*) ;
 int free_addrinfo ;
 TYPE_1__ hints ;
 int memset (TYPE_1__*,int ,int) ;
 int method ;
 int printf (char*,char const*) ;
 int sdump_addrinfo ;
 char* strdup (char const*) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static void
run_tests(char *hostlist_file, const char *snapshot_file, int ai_family)
{
 struct addrinfo_test_data td, td_snap;
 char *snapshot_file_copy;
 int rv;

 if (snapshot_file == ((void*)0))
  snapshot_file_copy = ((void*)0);
 else {
  snapshot_file_copy = strdup(snapshot_file);
  ATF_REQUIRE(snapshot_file_copy != ((void*)0));
 }

 memset(&hints, 0, sizeof(struct addrinfo));
 hints.ai_family = ai_family;
 hints.ai_flags = AI_CANONNAME;

 if (snapshot_file != ((void*)0))
  method = 129;

 TEST_DATA_INIT(addrinfo, &td, clone_addrinfo, free_addrinfo);
 TEST_DATA_INIT(addrinfo, &td_snap, clone_addrinfo, free_addrinfo);

 ATF_REQUIRE_MSG(access(hostlist_file, R_OK) == 0,
  "can't access the hostlist file %s\n", hostlist_file);

 printf("building host lists from %s\n", hostlist_file);

 rv = TEST_SNAPSHOT_FILE_READ(addrinfo, hostlist_file, &td,
  addrinfo_read_hostlist_func);
 if (rv != 0)
  goto fin;

 if (snapshot_file != ((void*)0)) {
  if (access(snapshot_file, W_OK | R_OK) != 0) {
   if (errno == ENOENT)
    method = 129;
   else {
    printf("can't access the snapshot "
        "file %s\n", snapshot_file);

    rv = -1;
    goto fin;
   }
  } else {
   rv = TEST_SNAPSHOT_FILE_READ(addrinfo, snapshot_file,
    &td_snap, addrinfo_read_snapshot_func);
   if (rv != 0) {
    printf("error reading snapshot file: %s\n",
        strerror(errno));
    goto fin;
   }
  }
 }

 switch (method) {
 case 128:
  if (snapshot_file != ((void*)0))
   ATF_CHECK(DO_2PASS_TEST(addrinfo, &td, &td_snap,
    compare_addrinfo, ((void*)0)) == 0);
  break;
 case 129:
  if (snapshot_file != ((void*)0)) {
   ATF_CHECK(TEST_SNAPSHOT_FILE_WRITE(addrinfo,
       snapshot_file, &td, sdump_addrinfo) == 0);
  }
  break;
 default:
  break;
 }

fin:
 TEST_DATA_DESTROY(addrinfo, &td_snap);
 TEST_DATA_DESTROY(addrinfo, &td);

 free(snapshot_file_copy);
}
