
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_4__ {scalar_t__ extended_usage; int extended; int output; int input; } ;
typedef TYPE_1__ Channel ;


 scalar_t__ CHAN_EXTENDED_WRITE ;
 int process_escapes (struct ssh*,TYPE_1__*,int ,int ,int ,char*,int) ;

int
client_simple_escape_filter(struct ssh *ssh, Channel *c, char *buf, int len)
{
 if (c->extended_usage != CHAN_EXTENDED_WRITE)
  return 0;

 return process_escapes(ssh, c, c->input, c->output, c->extended,
     buf, len);
}
