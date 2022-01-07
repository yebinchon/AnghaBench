
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logininfo {int dummy; } ;
typedef int pid_t ;


 struct logininfo* login_alloc_entry (int ,char const*,int *,char const*) ;
 int login_free_entry (struct logininfo*) ;
 int login_logout (struct logininfo*) ;

void
record_logout(pid_t pid, const char *tty, const char *user)
{
 struct logininfo *li;

 li = login_alloc_entry(pid, user, ((void*)0), tty);
 login_logout(li);
 login_free_entry(li);
}
