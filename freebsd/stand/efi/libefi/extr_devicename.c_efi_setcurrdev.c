
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_var {int ev_name; } ;
struct devdesc {int dummy; } ;


 int EV_NOHOOK ;
 int efi_parsedev (struct devdesc**,void const*,int *) ;
 int env_setenv (int ,int,void const*,int *,int *) ;
 int free (struct devdesc*) ;

int
efi_setcurrdev(struct env_var *ev, int flags, const void *value)
{
 struct devdesc *ncurr;
 int rv;

 rv = efi_parsedev(&ncurr, value, ((void*)0));
 if (rv != 0)
  return (rv);

 free(ncurr);
 env_setenv(ev->ev_name, flags | EV_NOHOOK, value, ((void*)0), ((void*)0));
 return (0);
}
