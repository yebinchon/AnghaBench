
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ Channel ;
 TYPE_1__* channel_by_id (struct ssh*,int) ;
 int logit (char*,int,int) ;

Channel *
channel_lookup(struct ssh *ssh, int id)
{
 Channel *c;

 if ((c = channel_by_id(ssh, id)) == ((void*)0))
  return ((void*)0);

 switch (c->type) {
 case 128:
 case 134:
 case 136:
 case 135:
 case 129:
 case 130:
 case 131:
 case 132:
 case 137:
 case 133:
  return c;
 }
 logit("Non-public channel %d, type %d.", id, c->type);
 return ((void*)0);
}
