
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct passwd {int pw_name; } ;
struct TYPE_2__ {int * chroot_directory; scalar_t__ use_pam; } ;


 int aix_usrinfo (struct passwd*) ;
 int do_pam_setcred (int ) ;
 int fatal (char*) ;
 int irix_setusercontext (struct passwd*) ;
 TYPE_1__ options ;
 int setpcred (int ,char**) ;
 int ssh_selinux_setup_exec_context (int ) ;
 scalar_t__ strcasecmp (int *,char*) ;
 int use_privsep ;

void
platform_setusercontext_post_groups(struct passwd *pw)
{
}
