
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct sockaddr {int dummy; } ;
struct logininfo {int dummy; } ;
typedef int socklen_t ;
typedef int pid_t ;


 struct logininfo* login_alloc_entry (int ,char const*,char const*,char const*) ;
 int login_free_entry (struct logininfo*) ;
 int login_login (struct logininfo*) ;
 int login_set_addr (struct logininfo*,struct sockaddr*,int ) ;
 int store_lastlog_message (char const*,int ) ;

void
record_login(pid_t pid, const char *tty, const char *user, uid_t uid,
    const char *host, struct sockaddr *addr, socklen_t addrlen)
{
 struct logininfo *li;


 store_lastlog_message(user, uid);

 li = login_alloc_entry(pid, user, host, tty);
 login_set_addr(li, addr, addrlen);
 login_login(li);
 login_free_entry(li);
}
