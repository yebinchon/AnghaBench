
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_devdesc {int dummy; } ;
struct env_var {int ev_name; } ;


 int EV_NOHOOK ;
 int env_setenv (int ,int,void const*,int *,int *) ;
 int free (struct ofw_devdesc*) ;
 int ofw_parsedev (struct ofw_devdesc**,void const*,int *) ;

int
ofw_setcurrdev(struct env_var *ev, int flags, const void *value)
{
    struct ofw_devdesc *ncurr;
    int rv;

    if ((rv = ofw_parsedev(&ncurr, value, ((void*)0))) != 0)
 return rv;

    free(ncurr);
    env_setenv(ev->ev_name, flags | EV_NOHOOK, value, ((void*)0), ((void*)0));
    return 0;
}
