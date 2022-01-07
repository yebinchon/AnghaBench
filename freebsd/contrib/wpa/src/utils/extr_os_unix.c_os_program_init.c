
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __user_cap_header_struct {scalar_t__ pid; int version; } ;
struct __user_cap_data_struct {int effective; int permitted; scalar_t__ inheritable; } ;
typedef int gid_t ;


 int AID_INET ;
 int AID_KEYSTORE ;
 int AID_WIFI ;
 int ANDROID_SETGROUPS_OVERRIDE ;
 int ARRAY_SIZE (int *) ;
 int CAP_NET_ADMIN ;
 int CAP_NET_RAW ;
 int PR_SET_KEEPCAPS ;
 int _LINUX_CAPABILITY_VERSION ;
 int capset (struct __user_cap_header_struct*,struct __user_cap_data_struct*) ;
 int prctl (int ,int,int ,int ,int ) ;
 int setgid (int ) ;
 int setgroups (int ,int *) ;
 int setuid (int ) ;

int os_program_init(void)
{
 return 0;
}
