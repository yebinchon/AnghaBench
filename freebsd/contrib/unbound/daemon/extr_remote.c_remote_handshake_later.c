
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rc_state {scalar_t__ shake_state; TYPE_2__* c; } ;
struct daemon_remote {int dummy; } ;
struct comm_point {int dummy; } ;
struct TYPE_3__ {int addrlen; int addr; } ;
struct TYPE_4__ {TYPE_1__ repinfo; } ;


 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int clean_point (struct daemon_remote*,struct rc_state*) ;
 int comm_point_listen_for_rw (struct comm_point*,int,int) ;
 int log_addr (int,char*,int *,int ) ;
 int log_crypto_err (char*) ;
 int log_err (char*) ;
 scalar_t__ rc_hs_read ;
 scalar_t__ rc_hs_write ;

__attribute__((used)) static int
remote_handshake_later(struct daemon_remote* rc, struct rc_state* s,
 struct comm_point* c, int r, int r2)
{
 if(r2 == SSL_ERROR_WANT_READ) {
  if(s->shake_state == rc_hs_read) {

   return 0;
  }
  s->shake_state = rc_hs_read;
  comm_point_listen_for_rw(c, 1, 0);
  return 0;
 } else if(r2 == SSL_ERROR_WANT_WRITE) {
  if(s->shake_state == rc_hs_write) {

   return 0;
  }
  s->shake_state = rc_hs_write;
  comm_point_listen_for_rw(c, 0, 1);
  return 0;
 } else {
  if(r == 0)
   log_err("remote control connection closed prematurely");
  log_addr(1, "failed connection from",
   &s->c->repinfo.addr, s->c->repinfo.addrlen);
  log_crypto_err("remote control failed ssl");
  clean_point(rc, s);
 }
 return 0;
}
