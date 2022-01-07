
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct remote_state {int remote_packet_size; struct packet_reg* regs; int sizeof_g_packet; } ;
struct packet_reg {int offset; int regnum; scalar_t__ in_g_packet; } ;
struct TYPE_2__ {int support; } ;


 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;



 int PIDGET (int ) ;
 char* alloca (int ) ;
 int bin2hex (char*,char*,int ) ;
 int error (char*) ;
 struct remote_state* get_remote_state () ;
 int inferior_ptid ;
 int memset (char*,int ,int ) ;
 int regcache_collect (int ,char*) ;
 int register_bytes_found ;
 TYPE_1__ remote_protocol_P ;
 int remote_send (char*,int ) ;
 int set_thread (int ,int) ;
 int store_register_using_P (int) ;

__attribute__((used)) static void
remote_store_registers (int regnum)
{
  struct remote_state *rs = get_remote_state ();
  char *buf;
  char *regs;
  int i;
  char *p;

  set_thread (PIDGET (inferior_ptid), 1);

  if (regnum >= 0)
    {
      switch (remote_protocol_P.support)
 {
 case 130:
   break;
 case 129:
   if (store_register_using_P (regnum))
     return;
   else
     error ("Protocol error: P packet not recognized by stub");
 case 128:
   if (store_register_using_P (regnum))
     {

       remote_protocol_P.support = 129;
       return;
     }
   else
     {



       remote_protocol_P.support = 130;
       break;
     }
 }
    }



  {
    int i;
    regs = alloca (rs->sizeof_g_packet);
    memset (regs, 0, rs->sizeof_g_packet);
    for (i = 0; i < NUM_REGS + NUM_PSEUDO_REGS; i++)
      {
 struct packet_reg *r = &rs->regs[i];
 if (r->in_g_packet)
   regcache_collect (r->regnum, regs + r->offset);
      }
  }



  buf = alloca (rs->remote_packet_size);
  p = buf;
  *p++ = 'G';

  bin2hex (regs, p, register_bytes_found);
  remote_send (buf, (rs->remote_packet_size));
}
