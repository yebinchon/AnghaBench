
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct remote_state {int remote_packet_size; } ;
typedef int ULONGEST ;
struct TYPE_2__ {int support; } ;
typedef int CORE_ADDR ;





 char* alloca (int ) ;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdlog ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int hexnumstr (char*,int ) ;
 int putpkt_binary (char*,int) ;
 int remote_debug ;
 TYPE_1__ remote_protocol_binary_download ;

__attribute__((used)) static void
check_binary_download (CORE_ADDR addr)
{
  struct remote_state *rs = get_remote_state ();
  switch (remote_protocol_binary_download.support)
    {
    case 130:
      break;
    case 129:
      break;
    case 128:
      {
 char *buf = alloca (rs->remote_packet_size);
 char *p;

 p = buf;
 *p++ = 'X';
 p += hexnumstr (p, (ULONGEST) addr);
 *p++ = ',';
 p += hexnumstr (p, (ULONGEST) 0);
 *p++ = ':';
 *p = '\0';

 putpkt_binary (buf, (int) (p - buf));
 getpkt (buf, (rs->remote_packet_size), 0);

 if (buf[0] == '\0')
   {
     if (remote_debug)
       fprintf_unfiltered (gdb_stdlog,
      "binary downloading NOT suppported by target\n");
     remote_protocol_binary_download.support = 130;
   }
 else
   {
     if (remote_debug)
       fprintf_unfiltered (gdb_stdlog,
      "binary downloading suppported by target\n");
     remote_protocol_binary_download.support = 129;
   }
 break;
      }
    }
}
