
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int CLIENT_FQDN_FLAGS_E ;
 int CLIENT_FQDN_FLAGS_N ;
 int CLIENT_FQDN_FLAGS_O ;
 int CLIENT_FQDN_FLAGS_S ;

__attribute__((used)) static char *
client_fqdn_flags(u_int flags)
{
 static char buf[8+1];
 int i = 0;

 if (flags & CLIENT_FQDN_FLAGS_S)
  buf[i++] = 'S';
 if (flags & CLIENT_FQDN_FLAGS_O)
  buf[i++] = 'O';
 if (flags & CLIENT_FQDN_FLAGS_E)
  buf[i++] = 'E';
 if (flags & CLIENT_FQDN_FLAGS_N)
  buf[i++] = 'N';
 buf[i] = '\0';

 return buf;
}
