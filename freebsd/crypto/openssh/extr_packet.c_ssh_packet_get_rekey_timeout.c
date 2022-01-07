
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int rekey_time; int rekey_interval; } ;


 int monotime () ;

time_t
ssh_packet_get_rekey_timeout(struct ssh *ssh)
{
 time_t seconds;

 seconds = ssh->state->rekey_time + ssh->state->rekey_interval -
     monotime();
 return (seconds <= 0 ? 1 : seconds);
}
