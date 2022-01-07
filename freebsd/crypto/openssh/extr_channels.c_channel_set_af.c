
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* chanctxt; } ;
struct TYPE_2__ {int IPv4or6; } ;



void
channel_set_af(struct ssh *ssh, int af)
{
 ssh->chanctxt->IPv4or6 = af;
}
