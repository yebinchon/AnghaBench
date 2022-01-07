
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;
typedef int p ;
typedef int newif ;


 int log_err (char*,char const*) ;
 int make_sock (int,char const*,char const*,struct addrinfo*,int,int*,size_t,size_t,int*,int,int,int,int) ;
 char* strchr (char const*,char) ;
 int strlcpy (char*,char const*,int) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
make_sock_port(int stype, const char* ifname, const char* port,
 struct addrinfo *hints, int v6only, int* noip6, size_t rcv, size_t snd,
 int* reuseport, int transparent, int tcp_mss, int freebind, int use_systemd)
{
 char* s = strchr(ifname, '@');
 if(s) {

  char p[16];
  char newif[128];
  if((size_t)(s-ifname) >= sizeof(newif)) {
   log_err("ifname too long: %s", ifname);
   *noip6 = 0;
   return -1;
  }
  if(strlen(s+1) >= sizeof(p)) {
   log_err("portnumber too long: %s", ifname);
   *noip6 = 0;
   return -1;
  }
  (void)strlcpy(newif, ifname, sizeof(newif));
  newif[s-ifname] = 0;
  (void)strlcpy(p, s+1, sizeof(p));
  p[strlen(s+1)]=0;
  return make_sock(stype, newif, p, hints, v6only, noip6,
   rcv, snd, reuseport, transparent, tcp_mss, freebind, use_systemd);
 }
 return make_sock(stype, ifname, port, hints, v6only, noip6, rcv, snd,
  reuseport, transparent, tcp_mss, freebind, use_systemd);
}
