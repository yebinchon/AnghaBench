
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pr_hostname; } ;
struct TYPE_3__ {int version; int release; int nodename; int sysname; } ;


 int osreldate ;
 int osrelease ;
 int ostype ;
 TYPE_2__ prison0 ;
 int snprintf (int ,int,char*,int) ;
 TYPE_1__ utsname ;

__attribute__((used)) static void
opensolaris_utsname_init(void *arg)
{

 utsname.sysname = ostype;
 utsname.nodename = prison0.pr_hostname;
 utsname.release = osrelease;
 snprintf(utsname.version, sizeof(utsname.version), "%d", osreldate);
}
