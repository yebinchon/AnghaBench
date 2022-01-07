
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_var {int ev_name; } ;


 int CMD_ERROR ;
 int CMD_OK ;
 int EV_NOHOOK ;
 int comc_curspeed ;
 int comc_parseint (void const*) ;
 int comc_port ;
 int comc_setup (int,int ) ;
 int env_setenv (int ,int,void const*,int *,int *) ;
 int printf (char*) ;

__attribute__((used)) static int
comc_speed_set(struct env_var *ev, int flags, const void *value)
{
 int speed;

 if (value == ((void*)0) || (speed = comc_parseint(value)) <= 0) {
  printf("Invalid speed\n");
  return (CMD_ERROR);
 }

 if (comc_curspeed != speed)
  comc_setup(speed, comc_port);

 env_setenv(ev->ev_name, flags | EV_NOHOOK, value, ((void*)0), ((void*)0));

 return (CMD_OK);
}
