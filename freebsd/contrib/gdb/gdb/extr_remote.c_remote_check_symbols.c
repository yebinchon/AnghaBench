
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct remote_state {int remote_packet_size; } ;
struct objfile {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct TYPE_3__ {scalar_t__ support; } ;


 scalar_t__ PACKET_DISABLE ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 char* alloca (int ) ;
 struct remote_state* get_remote_state () ;
 int getpkt (char*,int ,int ) ;
 int hex2bin (char*,char*,int) ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;
 int packet_ok (char*,TYPE_1__*) ;
 char* paddr_nz (int ) ;
 int putpkt (char*) ;
 TYPE_1__ remote_protocol_qSymbol ;
 int sprintf (char*,char*,char*,...) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
remote_check_symbols (struct objfile *objfile)
{
  struct remote_state *rs = get_remote_state ();
  char *msg, *reply, *tmp;
  struct minimal_symbol *sym;
  int end;

  if (remote_protocol_qSymbol.support == PACKET_DISABLE)
    return;

  msg = alloca (rs->remote_packet_size);
  reply = alloca (rs->remote_packet_size);



  putpkt ("qSymbol::");
  getpkt (reply, (rs->remote_packet_size), 0);
  packet_ok (reply, &remote_protocol_qSymbol);

  while (strncmp (reply, "qSymbol:", 8) == 0)
    {
      tmp = &reply[8];
      end = hex2bin (tmp, msg, strlen (tmp) / 2);
      msg[end] = '\0';
      sym = lookup_minimal_symbol (msg, ((void*)0), ((void*)0));
      if (sym == ((void*)0))
 sprintf (msg, "qSymbol::%s", &reply[8]);
      else
 sprintf (msg, "qSymbol:%s:%s",
   paddr_nz (SYMBOL_VALUE_ADDRESS (sym)),
   &reply[8]);
      putpkt (msg);
      getpkt (reply, (rs->remote_packet_size), 0);
    }
}
