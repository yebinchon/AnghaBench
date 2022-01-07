
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct remote_state {int remote_packet_size; } ;
typedef int ULONGEST ;
struct TYPE_3__ {scalar_t__ support; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ BFD_ENDIAN_BIG ;
 int BREAKPOINT_FROM_PC (scalar_t__*,int*) ;
 scalar_t__ PACKET_DISABLE ;



 scalar_t__ TARGET_BYTE_ORDER ;
 size_t Z_PACKET_SOFTWARE_BP ;
 char* alloca (int ) ;
 scalar_t__ big_break_insn ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int hexnumstr (char*,int ) ;
 scalar_t__ little_break_insn ;
 int memory_insert_breakpoint (scalar_t__,char*) ;
 int packet_ok (char*,TYPE_1__*) ;
 int putpkt (char*) ;
 scalar_t__ remote_address_masked (scalar_t__) ;
 TYPE_1__* remote_protocol_Z ;
 int sprintf (char*,char*,int) ;
 int target_read_memory (scalar_t__,char*,int) ;
 int target_write_memory (scalar_t__,char*,int) ;

__attribute__((used)) static int
remote_insert_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  struct remote_state *rs = get_remote_state ();



  int bp_size;






  if (remote_protocol_Z[Z_PACKET_SOFTWARE_BP].support != PACKET_DISABLE)
    {
      char *buf = alloca (rs->remote_packet_size);
      char *p = buf;

      addr = remote_address_masked (addr);
      *(p++) = 'Z';
      *(p++) = '0';
      *(p++) = ',';
      p += hexnumstr (p, (ULONGEST) addr);
      BREAKPOINT_FROM_PC (&addr, &bp_size);
      sprintf (p, ",%d", bp_size);

      putpkt (buf);
      getpkt (buf, (rs->remote_packet_size), 0);

      switch (packet_ok (buf, &remote_protocol_Z[Z_PACKET_SOFTWARE_BP]))
 {
 case 130:
   return -1;
 case 129:
   return 0;
 case 128:
   break;
 }
    }
  return memory_insert_breakpoint (addr, contents_cache);

}
