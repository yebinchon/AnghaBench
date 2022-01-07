
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct remote_state {TYPE_1__* regs; } ;
struct TYPE_4__ {int support; } ;
struct TYPE_3__ {int regnum; int in_g_packet; } ;


 int MAX_REGISTER_SIZE ;
 int NUM_REGS ;



 int current_regcache ;
 struct remote_state* get_remote_state () ;
 int regcache_raw_read (int ,int ,char*) ;
 TYPE_2__ remote_protocol_P ;

__attribute__((used)) static void
remote_prepare_to_store (void)
{
  struct remote_state *rs = get_remote_state ();
  int i;
  char buf[MAX_REGISTER_SIZE];


  switch (remote_protocol_P.support)
    {
    case 130:
    case 128:

      for (i = 0; i < NUM_REGS; i++)
 if (rs->regs[i].in_g_packet)
   regcache_raw_read (current_regcache, rs->regs[i].regnum, buf);
      break;
    case 129:
      break;
    }
}
