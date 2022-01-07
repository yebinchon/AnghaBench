
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listen_port {int dummy; } ;
struct config_strlist {int dummy; } ;
struct addrinfo {int ai_family; } ;


 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int VERB_ALGO ;
 int atoi (char const*) ;
 int close (int) ;
 int closesocket (int) ;
 int if_is_ssl (char const*,char const*,int,struct config_strlist*) ;
 int listen_type_ssl ;
 int listen_type_tcp ;
 int listen_type_tcp_dnscrypt ;
 int listen_type_udp ;
 int listen_type_udp_dnscrypt ;
 int listen_type_udpancil ;
 int listen_type_udpancil_dnscrypt ;
 int log_warn (char*) ;
 int make_sock_port (int ,char const*,char const*,struct addrinfo*,int,int*,size_t,size_t,int*,int,int,int,int) ;
 int port_insert (struct listen_port**,int,int ) ;
 int set_recvpktinfo (int,int ) ;
 char const* strchr (char const*,char) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
ports_create_if(const char* ifname, int do_auto, int do_udp, int do_tcp,
 struct addrinfo *hints, const char* port, struct listen_port** list,
 size_t rcv, size_t snd, int ssl_port,
 struct config_strlist* tls_additional_port, int* reuseport,
 int transparent, int tcp_mss, int freebind, int use_systemd,
 int dnscrypt_port)
{
 int s, noip6=0;





 int is_dnscrypt = 0;
 (void)dnscrypt_port;


 if(!do_udp && !do_tcp)
  return 0;
 if(do_auto) {
  if((s = make_sock_port(SOCK_DGRAM, ifname, port, hints, 1,
   &noip6, rcv, snd, reuseport, transparent,
   tcp_mss, freebind, use_systemd)) == -1) {
   if(noip6) {
    log_warn("IPv6 protocol not available");
    return 1;
   }
   return 0;
  }

  if(!set_recvpktinfo(s, hints->ai_family)) {

   close(s);



   return 0;
  }
  if(!port_insert(list, s,
     is_dnscrypt?listen_type_udpancil_dnscrypt:listen_type_udpancil)) {

   close(s);



   return 0;
  }
 } else if(do_udp) {

  if((s = make_sock_port(SOCK_DGRAM, ifname, port, hints, 1,
   &noip6, rcv, snd, reuseport, transparent,
   tcp_mss, freebind, use_systemd)) == -1) {
   if(noip6) {
    log_warn("IPv6 protocol not available");
    return 1;
   }
   return 0;
  }
  if(!port_insert(list, s,
     is_dnscrypt?listen_type_udp_dnscrypt:listen_type_udp)) {

   close(s);



   return 0;
  }
 }
 if(do_tcp) {
  int is_ssl = if_is_ssl(ifname, port, ssl_port,
   tls_additional_port);
  if((s = make_sock_port(SOCK_STREAM, ifname, port, hints, 1,
   &noip6, 0, 0, reuseport, transparent, tcp_mss,
   freebind, use_systemd)) == -1) {
   if(noip6) {

    return 1;
   }
   return 0;
  }
  if(is_ssl)
   verbose(VERB_ALGO, "setup TCP for SSL service");
  if(!port_insert(list, s, is_ssl?listen_type_ssl:
   (is_dnscrypt?listen_type_tcp_dnscrypt:listen_type_tcp))) {

   close(s);



   return 0;
  }
 }
 return 1;
}
