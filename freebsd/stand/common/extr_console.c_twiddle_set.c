
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u_int ;
struct env_var {int ev_name; } ;


 int CMD_ERROR ;
 int CMD_OK ;
 int EV_NOHOOK ;
 int env_setenv (int ,int,void const*,int *,int *) ;
 int printf (char*,char const*) ;
 scalar_t__ strtoul (void const*,char**,int ) ;
 int twiddle_divisor (int ) ;

__attribute__((used)) static int
twiddle_set(struct env_var *ev, int flags, const void *value)
{
    u_long tdiv;
    char * eptr;

    tdiv = strtoul(value, &eptr, 0);
    if (*(const char *)value == 0 || *eptr != 0) {
 printf("invalid twiddle_divisor '%s'\n", (const char *)value);
 return (CMD_ERROR);
    }
    twiddle_divisor((u_int)tdiv);
    env_setenv(ev->ev_name, flags | EV_NOHOOK, value, ((void*)0), ((void*)0));

    return(CMD_OK);
}
