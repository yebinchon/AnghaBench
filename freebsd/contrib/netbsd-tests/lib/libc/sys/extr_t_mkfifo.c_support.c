
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 scalar_t__ EOPNOTSUPP ;
 int atf_tc_fail (char*) ;
 int atf_tc_skip (char*) ;
 scalar_t__ errno ;
 scalar_t__ mkfifo (int ,int) ;
 int path ;
 scalar_t__ unlink (int ) ;

__attribute__((used)) static void
support(void)
{

 errno = 0;

 if (mkfifo(path, 0600) == 0) {
  ATF_REQUIRE(unlink(path) == 0);
  return;
 }

 if (errno == EOPNOTSUPP)
  atf_tc_skip("the kernel does not support FIFOs");
 else {
  atf_tc_fail("mkfifo(2) failed");
 }
}
