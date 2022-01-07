
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct passwd {int pw_uid; } ;
struct TYPE_2__ {scalar_t__ use_pam; } ;


 int do_pam_setcred (int ) ;
 int errno ;
 int error (char*,int ) ;
 scalar_t__ geteuid () ;
 int getluid () ;
 scalar_t__ getuid () ;
 TYPE_1__ options ;
 int setluid (int ) ;
 int setpgid (int ,int ) ;
 int solaris_set_default_project (struct passwd*) ;
 int ssh_selinux_enabled () ;
 int strerror (int ) ;
 int use_privsep ;

void
platform_setusercontext(struct passwd *pw)
{
}
