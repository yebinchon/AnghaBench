
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct waiting_tcp {TYPE_1__* outnet; int addrlen; int addr; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int dummy; } ;
struct port_if {int addrlen; int addr; } ;
struct TYPE_2__ {int num_ip6; int num_ip4; int rnd; struct port_if* ip4_ifs; struct port_if* ip6_ifs; } ;


 int VERB_ALGO ;
 int VERB_OPS ;
 int WSAGetLastError () ;
 scalar_t__ addr_is_any (int *,int ) ;
 scalar_t__ addr_is_ip6 (int *,int ) ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 int close (int) ;
 int closesocket (int) ;
 int errno ;
 int log_addr (int ,char*,int *,int ) ;
 int log_assert (struct port_if*) ;
 int log_err (char*,...) ;
 int strerror (int ) ;
 size_t ub_random_max (int ,int) ;
 int wsa_strerror (int ) ;

__attribute__((used)) static int
pick_outgoing_tcp(struct waiting_tcp* w, int s)
{
 struct port_if* pi = ((void*)0);
 int num;





  num = w->outnet->num_ip4;
 if(num == 0) {
  log_err("no TCP outgoing interfaces of family");
  log_addr(VERB_OPS, "for addr", &w->addr, w->addrlen);

  close(s);



  return 0;
 }





  pi = &w->outnet->ip4_ifs[ub_random_max(w->outnet->rnd, num)];
 log_assert(pi);
 if(addr_is_any(&pi->addr, pi->addrlen)) {

  return 1;
 }

 if(addr_is_ip6(&pi->addr, pi->addrlen))
  ((struct sockaddr_in6*)&pi->addr)->sin6_port = 0;
 else ((struct sockaddr_in*)&pi->addr)->sin_port = 0;
 if(bind(s, (struct sockaddr*)&pi->addr, pi->addrlen) != 0) {

  log_err("outgoing tcp: bind: %s", strerror(errno));
  close(s);





  return 0;
 }
 log_addr(VERB_ALGO, "tcp bound to src", &pi->addr, pi->addrlen);
 return 1;
}
