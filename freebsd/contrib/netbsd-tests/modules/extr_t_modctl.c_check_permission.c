
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_EQ_MSG (scalar_t__,int ,char*,scalar_t__) ;
 scalar_t__ ENOSYS ;
 scalar_t__ EPERM ;
 int MODCTL_EXISTS ;
 int atf_tc_skip (char*) ;
 scalar_t__ errno ;
 int modctl (int ,int ) ;

__attribute__((used)) static void
check_permission(void)
{
 int err;

 err = modctl(MODCTL_EXISTS, 0);
 if (err == 0) return;
 if (errno == ENOSYS)
  atf_tc_skip("Kernel does not have 'options MODULAR'.");
 else if (errno == EPERM)
  atf_tc_skip("Module loading administratively forbidden");
 ATF_REQUIRE_EQ_MSG(errno, 0, "unexpected error %d from "
     "modctl(MODCTL_EXISTS, 0)", errno);
}
