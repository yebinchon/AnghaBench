
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct Forward {char* connect_host; scalar_t__ listen_port; char* listen_path; char* listen_host; scalar_t__ connect_port; char* connect_path; } ;
typedef scalar_t__ OpCodes ;


 scalar_t__ PORT_STREAMLOCAL ;
 char* lookup_opcode_name (scalar_t__) ;
 scalar_t__ oDynamicForward ;
 scalar_t__ oLocalForward ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
dump_cfg_forwards(OpCodes code, u_int count, const struct Forward *fwds)
{
 const struct Forward *fwd;
 u_int i;


 for (i = 0; i < count; i++) {
  fwd = &fwds[i];
  if (code == oDynamicForward && fwd->connect_host != ((void*)0) &&
      strcmp(fwd->connect_host, "socks") != 0)
   continue;
  if (code == oLocalForward && fwd->connect_host != ((void*)0) &&
      strcmp(fwd->connect_host, "socks") == 0)
   continue;
  printf("%s", lookup_opcode_name(code));
  if (fwd->listen_port == PORT_STREAMLOCAL)
   printf(" %s", fwd->listen_path);
  else if (fwd->listen_host == ((void*)0))
   printf(" %d", fwd->listen_port);
  else {
   printf(" [%s]:%d",
       fwd->listen_host, fwd->listen_port);
  }
  if (code != oDynamicForward) {
   if (fwd->connect_port == PORT_STREAMLOCAL)
    printf(" %s", fwd->connect_path);
   else if (fwd->connect_host == ((void*)0))
    printf(" %d", fwd->connect_port);
   else {
    printf(" [%s]:%d",
        fwd->connect_host, fwd->connect_port);
   }
  }
  printf("\n");
 }
}
