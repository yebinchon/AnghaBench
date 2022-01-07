
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logininfo {int dummy; } ;
typedef int pid_t ;


 int login_init_entry (struct logininfo*,int ,char const*,char const*,char const*) ;
 struct logininfo* xmalloc (int) ;

struct
logininfo *login_alloc_entry(pid_t pid, const char *username,
    const char *hostname, const char *line)
{
 struct logininfo *newli;

 newli = xmalloc(sizeof(*newli));
 login_init_entry(newli, pid, username, hostname, line);
 return (newli);
}
