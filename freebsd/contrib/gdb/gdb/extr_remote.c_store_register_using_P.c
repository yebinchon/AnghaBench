
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {int remote_packet_size; } ;
struct packet_reg {int regnum; int pnum; } ;


 int DEPRECATED_REGISTER_RAW_SIZE (int ) ;
 int MAX_REGISTER_SIZE ;
 char* alloca (int ) ;
 int bin2hex (char*,char*,int ) ;
 struct remote_state* get_remote_state () ;
 struct packet_reg* packet_reg_from_regnum (struct remote_state*,int) ;
 char* phex_nz (int ,int ) ;
 int regcache_collect (int ,char*) ;
 int remote_send (char*,int ) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
store_register_using_P (int regnum)
{
  struct remote_state *rs = get_remote_state ();
  struct packet_reg *reg = packet_reg_from_regnum (rs, regnum);

  char *buf = alloca (rs->remote_packet_size);
  char regp[MAX_REGISTER_SIZE];
  char *p;
  int i;

  sprintf (buf, "P%s=", phex_nz (reg->pnum, 0));
  p = buf + strlen (buf);
  regcache_collect (reg->regnum, regp);
  bin2hex (regp, p, DEPRECATED_REGISTER_RAW_SIZE (reg->regnum));
  remote_send (buf, rs->remote_packet_size);

  return buf[0] != '\0';
}
