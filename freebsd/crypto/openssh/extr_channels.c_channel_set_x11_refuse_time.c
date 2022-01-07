
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct ssh {TYPE_1__* chanctxt; } ;
struct TYPE_2__ {int x11_refuse_time; } ;



void
channel_set_x11_refuse_time(struct ssh *ssh, u_int refuse_time)
{
 ssh->chanctxt->x11_refuse_time = refuse_time;
}
