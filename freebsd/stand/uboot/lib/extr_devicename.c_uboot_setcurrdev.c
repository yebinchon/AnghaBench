
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uboot_devdesc {int dummy; } ;
struct env_var {int ev_name; } ;


 int EV_NOHOOK ;
 int env_setenv (int ,int,void const*,int *,int *) ;
 int free (struct uboot_devdesc*) ;
 int uboot_parsedev (struct uboot_devdesc**,void const*,int *) ;

int
uboot_setcurrdev(struct env_var *ev, int flags, const void *value)
{
 struct uboot_devdesc *ncurr;
 int rv;

 if ((rv = uboot_parsedev(&ncurr, value, ((void*)0))) != 0)
  return (rv);
 free(ncurr);
 env_setenv(ev->ev_name, flags | EV_NOHOOK, value, ((void*)0), ((void*)0));
 return (0);
}
