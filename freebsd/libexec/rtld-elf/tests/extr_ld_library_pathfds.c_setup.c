
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descriptors {scalar_t__ testdir; void* root; void* usr; void* etc; int binary; } ;
typedef int atf_tc_t ;


 int ATF_REQUIRE (int) ;
 int O_RDONLY ;
 char* atf_tc_get_config_var (int const*,char*) ;
 int openat (scalar_t__,char*,int ) ;
 void* opendir (char*) ;
 void* opendirat (void*,char*) ;

__attribute__((used)) static void
setup(struct descriptors *dp, const atf_tc_t *tc)
{

 dp->testdir = opendir(atf_tc_get_config_var(tc, "srcdir"));
 ATF_REQUIRE(dp->testdir >= 0);
 ATF_REQUIRE(
     (dp->binary = openat(dp->testdir, "target", O_RDONLY)) >= 0);

 ATF_REQUIRE((dp->root = opendir("/")) >= 0);
 ATF_REQUIRE((dp->etc = opendirat(dp->root, "etc")) >= 0);
 ATF_REQUIRE((dp->usr = opendirat(dp->root, "usr")) >= 0);
}
