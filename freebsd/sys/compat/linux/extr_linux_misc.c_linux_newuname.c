
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utsname ;
struct thread {int td_ucred; } ;
struct linux_newuname_args {int buf; } ;
struct l_new_utsname {char* sysname; char* release; char* version; char* machine; int domainname; int nodename; } ;


 int LINUX_MAX_UTSNAME ;
 int bzero (struct l_new_utsname*,int) ;
 int copyout (struct l_new_utsname*,int ,int) ;
 int getcreddomainname (int ,int ,int) ;
 int getcredhostname (int ,int ,int) ;
 int linux_get_osname (struct thread*,char*) ;
 int linux_get_osrelease (struct thread*,char*) ;
 char* linux_kplatform ;
 int strlcpy (char*,char*,int) ;
 char* version ;

int
linux_newuname(struct thread *td, struct linux_newuname_args *args)
{
 struct l_new_utsname utsname;
 char osname[LINUX_MAX_UTSNAME];
 char osrelease[LINUX_MAX_UTSNAME];
 char *p;

 linux_get_osname(td, osname);
 linux_get_osrelease(td, osrelease);

 bzero(&utsname, sizeof(utsname));
 strlcpy(utsname.sysname, osname, LINUX_MAX_UTSNAME);
 getcredhostname(td->td_ucred, utsname.nodename, LINUX_MAX_UTSNAME);
 getcreddomainname(td->td_ucred, utsname.domainname, LINUX_MAX_UTSNAME);
 strlcpy(utsname.release, osrelease, LINUX_MAX_UTSNAME);
 strlcpy(utsname.version, version, LINUX_MAX_UTSNAME);
 for (p = utsname.version; *p != '\0'; ++p)
  if (*p == '\n') {
   *p = '\0';
   break;
  }
 strlcpy(utsname.machine, linux_kplatform, LINUX_MAX_UTSNAME);

 return (copyout(&utsname, args->buf, sizeof(utsname)));
}
