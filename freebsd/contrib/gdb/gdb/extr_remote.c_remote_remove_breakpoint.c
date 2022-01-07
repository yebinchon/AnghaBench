
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct remote_state {int remote_packet_size; } ;
typedef int ULONGEST ;
struct TYPE_2__ {scalar_t__ support; } ;
typedef scalar_t__ CORE_ADDR ;


 int BREAKPOINT_FROM_PC (scalar_t__*,int*) ;
 scalar_t__ PACKET_DISABLE ;
 size_t Z_PACKET_SOFTWARE_BP ;
 char* alloca (int ) ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int hexnumstr (char*,int ) ;
 int memory_remove_breakpoint (scalar_t__,char*) ;
 int putpkt (char*) ;
 scalar_t__ remote_address_masked (scalar_t__) ;
 TYPE_1__* remote_protocol_Z ;
 int sprintf (char*,char*,int) ;
 int target_write_memory (scalar_t__,char*,int) ;

__attribute__((used)) static int
remote_remove_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  struct remote_state *rs = get_remote_state ();
  int bp_size;

  if (remote_protocol_Z[Z_PACKET_SOFTWARE_BP].support != PACKET_DISABLE)
    {
      char *buf = alloca (rs->remote_packet_size);
      char *p = buf;

      *(p++) = 'z';
      *(p++) = '0';
      *(p++) = ',';

      addr = remote_address_masked (addr);
      p += hexnumstr (p, (ULONGEST) addr);
      BREAKPOINT_FROM_PC (&addr, &bp_size);
      sprintf (p, ",%d", bp_size);

      putpkt (buf);
      getpkt (buf, (rs->remote_packet_size), 0);

      return (buf[0] == 'E');
    }




  return memory_remove_breakpoint (addr, contents_cache);

}
