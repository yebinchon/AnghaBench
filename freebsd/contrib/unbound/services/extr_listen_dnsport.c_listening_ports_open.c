
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listen_port {int dummy; } ;
struct config_file {int port; int do_ip4; int do_ip6; int do_tcp; scalar_t__ incoming_num_tcp; int num_ifs; char** ifs; int dnscrypt_port; int use_systemd; int ip_freebind; int tcp_mss; int ip_transparent; int tls_additional_port; int ssl_port; int so_sndbuf; int so_rcvbuf; int do_udp; scalar_t__ if_automatic; } ;
struct addrinfo {void* ai_family; int ai_flags; } ;
typedef int portbuf ;
typedef int hints ;


 void* AF_INET ;
 void* AF_INET6 ;
 void* AF_UNSPEC ;
 int AI_NUMERICHOST ;
 int AI_PASSIVE ;
 int listening_ports_free (struct listen_port*) ;
 int memset (struct addrinfo*,int ,int) ;
 int ports_create_if (char*,int,int ,int,struct addrinfo*,char*,struct listen_port**,int ,int ,int ,int ,int*,int ,int ,int ,int ,int ) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ str_is_ip6 (char*) ;

struct listen_port*
listening_ports_open(struct config_file* cfg, int* reuseport)
{
 struct listen_port* list = ((void*)0);
 struct addrinfo hints;
 int i, do_ip4, do_ip6;
 int do_tcp, do_auto;
 char portbuf[32];
 snprintf(portbuf, sizeof(portbuf), "%d", cfg->port);
 do_ip4 = cfg->do_ip4;
 do_ip6 = cfg->do_ip6;
 do_tcp = cfg->do_tcp;
 do_auto = cfg->if_automatic && cfg->do_udp;
 if(cfg->incoming_num_tcp == 0)
  do_tcp = 0;


 memset(&hints, 0, sizeof(hints));
 hints.ai_flags = AI_PASSIVE;

 if(cfg->num_ifs > 0)
  hints.ai_flags |= AI_NUMERICHOST;
 hints.ai_family = AF_UNSPEC;

 do_ip6 = 0;

 if(!do_ip4 && !do_ip6) {
  return ((void*)0);
 }

 if(do_auto || cfg->num_ifs == 0) {
  if(do_ip6) {
   hints.ai_family = AF_INET6;
   if(!ports_create_if(do_auto?"::0":"::1",
    do_auto, cfg->do_udp, do_tcp,
    &hints, portbuf, &list,
    cfg->so_rcvbuf, cfg->so_sndbuf,
    cfg->ssl_port, cfg->tls_additional_port,
    reuseport, cfg->ip_transparent,
    cfg->tcp_mss, cfg->ip_freebind, cfg->use_systemd,
    cfg->dnscrypt_port)) {
    listening_ports_free(list);
    return ((void*)0);
   }
  }
  if(do_ip4) {
   hints.ai_family = AF_INET;
   if(!ports_create_if(do_auto?"0.0.0.0":"127.0.0.1",
    do_auto, cfg->do_udp, do_tcp,
    &hints, portbuf, &list,
    cfg->so_rcvbuf, cfg->so_sndbuf,
    cfg->ssl_port, cfg->tls_additional_port,
    reuseport, cfg->ip_transparent,
    cfg->tcp_mss, cfg->ip_freebind, cfg->use_systemd,
    cfg->dnscrypt_port)) {
    listening_ports_free(list);
    return ((void*)0);
   }
  }
 } else for(i = 0; i<cfg->num_ifs; i++) {
  if(str_is_ip6(cfg->ifs[i])) {
   if(!do_ip6)
    continue;
   hints.ai_family = AF_INET6;
   if(!ports_create_if(cfg->ifs[i], 0, cfg->do_udp,
    do_tcp, &hints, portbuf, &list,
    cfg->so_rcvbuf, cfg->so_sndbuf,
    cfg->ssl_port, cfg->tls_additional_port,
    reuseport, cfg->ip_transparent,
    cfg->tcp_mss, cfg->ip_freebind, cfg->use_systemd,
    cfg->dnscrypt_port)) {
    listening_ports_free(list);
    return ((void*)0);
   }
  } else {
   if(!do_ip4)
    continue;
   hints.ai_family = AF_INET;
   if(!ports_create_if(cfg->ifs[i], 0, cfg->do_udp,
    do_tcp, &hints, portbuf, &list,
    cfg->so_rcvbuf, cfg->so_sndbuf,
    cfg->ssl_port, cfg->tls_additional_port,
    reuseport, cfg->ip_transparent,
    cfg->tcp_mss, cfg->ip_freebind, cfg->use_systemd,
    cfg->dnscrypt_port)) {
    listening_ports_free(list);
    return ((void*)0);
   }
  }
 }
 return list;
}
