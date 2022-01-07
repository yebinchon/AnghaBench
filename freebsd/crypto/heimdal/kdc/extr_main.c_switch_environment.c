
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_gid; int pw_uid; int pw_name; } ;


 int CAPNG_ADD ;
 int CAPNG_CLEAR_BOUNDING ;
 int CAPNG_EFFECTIVE ;
 int CAPNG_PERMITTED ;
 int CAP_NET_BIND_SERVICE ;
 int CAP_SETPCAP ;
 scalar_t__ capng_change_id (int ,int ,int ) ;
 int capng_clear (int) ;
 scalar_t__ capng_updatev (int ,int,int ,int ,int) ;
 scalar_t__ chroot (scalar_t__) ;
 scalar_t__ chroot_string ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 scalar_t__ geteuid () ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ initgroups (int ,int ) ;
 char* runas_string ;
 scalar_t__ setgid (int ) ;
 scalar_t__ setuid (int ) ;

__attribute__((used)) static void
switch_environment(void)
{
}
