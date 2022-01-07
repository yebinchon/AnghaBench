
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i386_devdesc {int dummy; } ;
struct env_var {int ev_name; } ;


 int EV_NOHOOK ;
 int env_setenv (int ,int,void const*,int *,int *) ;
 int free (struct i386_devdesc*) ;
 int i386_parsedev (struct i386_devdesc**,void const*,int *) ;

int
i386_setcurrdev(struct env_var *ev, int flags, const void *value)
{
    struct i386_devdesc *ncurr;
    int rv;

    if ((rv = i386_parsedev(&ncurr, value, ((void*)0))) != 0)
 return(rv);
    free(ncurr);
    env_setenv(ev->ev_name, flags | EV_NOHOOK, value, ((void*)0), ((void*)0));
    return(0);
}
