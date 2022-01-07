
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hostent_test_data {int dummy; } ;
typedef TYPE_1__* res_state ;
typedef enum test_methods { ____Placeholder_test_methods } test_methods ;
struct TYPE_4__ {int options; } ;




 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_FEATURE (char*) ;
 int DO_1PASS_TEST (int ,struct hostent_test_data*,int ,void*) ;
 int DO_2PASS_TEST (int ,struct hostent_test_data*,struct hostent_test_data*,int ,int *) ;
 scalar_t__ ENOENT ;
 int RES_INIT ;
 int RES_USE_INET6 ;
 int R_OK ;


 int TEST_DATA_DESTROY (int ,struct hostent_test_data*) ;
 int TEST_DATA_INIT (int ,struct hostent_test_data*,int ,int ) ;




 int TEST_SNAPSHOT_FILE_READ (int ,char const*,struct hostent_test_data*,int ) ;
 int TEST_SNAPSHOT_FILE_WRITE (int ,char const*,struct hostent_test_data*,int ) ;
 int W_OK ;
 TYPE_1__* __res_state () ;
 scalar_t__ access (char const*,int) ;
 int atf_tc_fail (char*,int) ;
 int clone_hostent ;
 int compare_hostent ;
 scalar_t__ errno ;
 int free (char*) ;
 int free_hostent ;
 int hostent ;
 int hostent_read_hostlist_func ;
 int hostent_read_snapshot_func ;
 int hostent_test_getaddrinfo_eq ;
 int hostent_test_gethostbyaddr ;
 int hostent_test_getnameinfo_eq ;
 int printf (char*,...) ;
 int res_ninit (TYPE_1__*) ;
 int sdump_hostent ;
 char* strdup (char const*) ;
 int use_ipnode_functions ;

__attribute__((used)) static int
run_tests(const char *hostlist_file, const char *snapshot_file, int _af_type,
    enum test_methods method, bool use_ipv6_mapping)
{
 char *snapshot_file_copy;
 struct hostent_test_data td, td_addr, td_snap;
 res_state statp;
 int rv = -2;

 if (snapshot_file == ((void*)0))
  snapshot_file_copy = ((void*)0);
 else {
  snapshot_file_copy = strdup(snapshot_file);
  ATF_REQUIRE(snapshot_file_copy != ((void*)0));
 }
 snapshot_file = snapshot_file_copy;

 switch (_af_type) {
 case 135:
  ATF_REQUIRE_FEATURE("inet");
  ATF_REQUIRE(!use_ipv6_mapping);
  break;
 case 134:
  ATF_REQUIRE_FEATURE("inet6");
  break;
 default:
  atf_tc_fail("unhandled address family: %d", _af_type);
  break;
 }

 if (!use_ipnode_functions) {
  statp = __res_state();
  if (statp == ((void*)0) || ((statp->options & RES_INIT) == 0 &&
      res_ninit(statp) == -1)) {
   printf("error: can't init res_state\n");
   rv = -1;
   goto fin2;
  }

  if (use_ipv6_mapping)
   statp->options |= RES_USE_INET6;
  else
   statp->options &= ~RES_USE_INET6;
 }

 TEST_DATA_INIT(hostent, &td, clone_hostent, free_hostent);
 TEST_DATA_INIT(hostent, &td_addr, clone_hostent, free_hostent);
 TEST_DATA_INIT(hostent, &td_snap, clone_hostent, free_hostent);

 if (access(hostlist_file, R_OK) != 0) {
  printf("can't access the hostlist file %s\n", hostlist_file);
  rv = -1;
  goto fin;
 }





 rv = TEST_SNAPSHOT_FILE_READ(hostent, hostlist_file, &td,
  hostent_read_hostlist_func);
 if (rv != 0) {
  printf("failed to read the host list file: %s\n",
      hostlist_file);
  goto fin;
 }

 if (snapshot_file != ((void*)0)) {
  if (access(snapshot_file, W_OK | R_OK) != 0) {
   if (errno == ENOENT) {
    if (method != 131)
     method = 132;
    else
     method = 133;
   } else {
    printf("can't access the snapshot file %s\n",
        snapshot_file);
    rv = -1;
    goto fin;
   }
  } else {
   rv = TEST_SNAPSHOT_FILE_READ(hostent, snapshot_file,
    &td_snap, hostent_read_snapshot_func);
   if (rv != 0) {
    printf("error reading snapshot file\n");
    goto fin;
   }
  }
 }

 switch (method) {
 case 129:
  if (snapshot_file != ((void*)0))
   rv = DO_2PASS_TEST(hostent, &td, &td_snap,
       compare_hostent, ((void*)0));
  break;
 case 131:
  rv = DO_1PASS_TEST(hostent, &td,
   hostent_test_gethostbyaddr, (void *)&td_addr);
  if (rv != 0)
   goto fin;

  if (snapshot_file != ((void*)0))
   rv = DO_2PASS_TEST(hostent, &td_addr, &td_snap,
       compare_hostent, ((void*)0));
  break;
 case 128:
  rv = DO_1PASS_TEST(hostent, &td,
   hostent_test_getaddrinfo_eq, ((void*)0));
  break;
 case 130:
  rv = DO_1PASS_TEST(hostent, &td,
   hostent_test_getnameinfo_eq, ((void*)0));
  break;
 case 132:
  if (snapshot_file != ((void*)0)) {
   rv = TEST_SNAPSHOT_FILE_WRITE(hostent, snapshot_file,
       &td, sdump_hostent);
  }
  break;
 case 133:
  if (snapshot_file != ((void*)0)) {
   rv = DO_1PASS_TEST(hostent, &td,
       hostent_test_gethostbyaddr, (void *)&td_addr);
   if (rv != 0)
    goto fin;
   rv = TEST_SNAPSHOT_FILE_WRITE(hostent, snapshot_file,
       &td_addr, sdump_hostent);
  }
  break;
 default:
  rv = 0;
  break;
 }

fin:
 TEST_DATA_DESTROY(hostent, &td_snap);
 TEST_DATA_DESTROY(hostent, &td_addr);
 TEST_DATA_DESTROY(hostent, &td);

fin2:
 free(snapshot_file_copy);

 return (rv);
}
