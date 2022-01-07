
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_var {int ev_name; struct env_var* ev_next; } ;


 struct env_var* environ ;
 int strcmp (int ,char const*) ;

struct env_var *
env_getenv(const char *name)
{
    struct env_var *ev;

    for (ev = environ; ev != ((void*)0); ev = ev->ev_next)
 if (!strcmp(ev->ev_name, name))
     break;
    return(ev);
}
