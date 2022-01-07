
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_var {int ev_name; } ;


 int CMD_OK ;
 int EV_NOHOOK ;
 int cons_change (void const*) ;
 scalar_t__ cons_check (void const*) ;
 int env_setenv (int ,int,void const*,int *,int *) ;

__attribute__((used)) static int
cons_set(struct env_var *ev, int flags, const void *value)
{
    int ret;

    if ((value == ((void*)0)) || (cons_check(value) == 0)) {




 return (CMD_OK);
    }

    ret = cons_change(value);
    if (ret != CMD_OK)
 return (ret);

    env_setenv(ev->ev_name, flags | EV_NOHOOK, value, ((void*)0), ((void*)0));
    return (CMD_OK);
}
