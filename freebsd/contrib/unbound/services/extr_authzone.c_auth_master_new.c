
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_master {struct auth_master* next; } ;


 scalar_t__ calloc (int,int) ;
 int log_err (char*) ;

__attribute__((used)) static struct auth_master*
auth_master_new(struct auth_master*** list)
{
 struct auth_master *m;
 m = (struct auth_master*)calloc(1, sizeof(*m));
 if(!m) {
  log_err("malloc failure");
  return ((void*)0);
 }

 (**list) = m;

 (*list) = &(m->next);
 return m;
}
