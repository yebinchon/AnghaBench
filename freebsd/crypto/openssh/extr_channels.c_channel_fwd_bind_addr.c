
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ForwardOptions {int gateway_ports; } ;


 int SSH_OLD_FORWARD_ADDR ;
 int datafellows ;
 int packet_send_debug (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static const char *
channel_fwd_bind_addr(const char *listen_addr, int *wildcardp,
    int is_client, struct ForwardOptions *fwd_opts)
{
 const char *addr = ((void*)0);
 int wildcard = 0;

 if (listen_addr == ((void*)0)) {

  if (fwd_opts->gateway_ports)
   wildcard = 1;
 } else if (fwd_opts->gateway_ports || is_client) {
  if (((datafellows & SSH_OLD_FORWARD_ADDR) &&
      strcmp(listen_addr, "0.0.0.0") == 0 && is_client == 0) ||
      *listen_addr == '\0' || strcmp(listen_addr, "*") == 0 ||
      (!is_client && fwd_opts->gateway_ports == 1)) {
   wildcard = 1;




   if (*listen_addr != '\0' &&
       strcmp(listen_addr, "0.0.0.0") != 0 &&
       strcmp(listen_addr, "*") != 0) {
    packet_send_debug("Forwarding listen address "
        "\"%s\" overridden by server "
        "GatewayPorts", listen_addr);
   }
  } else if (strcmp(listen_addr, "localhost") != 0 ||
      strcmp(listen_addr, "127.0.0.1") == 0 ||
      strcmp(listen_addr, "::1") == 0) {

   addr = listen_addr;
  }
 } else if (strcmp(listen_addr, "127.0.0.1") == 0 ||
     strcmp(listen_addr, "::1") == 0) {





  addr = listen_addr;
 }
 if (wildcardp != ((void*)0))
  *wildcardp = wildcard;
 return addr;
}
