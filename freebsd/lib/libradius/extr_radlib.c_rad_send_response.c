
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct rad_handle {scalar_t__ type; int* out; int out_len; scalar_t__* in; size_t srv; TYPE_1__* servers; int fd; } ;
struct TYPE_2__ {int addr; } ;


 size_t POS_CODE ;
 size_t POS_LENGTH ;
 scalar_t__ RADIUS_SERVER ;
 scalar_t__ RAD_ACCESS_REQUEST ;
 int errno ;
 int generr (struct rad_handle*,char*,...) ;
 int insert_message_authenticator (struct rad_handle*,int) ;
 int insert_request_authenticator (struct rad_handle*,int) ;
 int sendto (int ,int*,int,int ,struct sockaddr const*,int) ;
 int strerror (int ) ;

int
rad_send_response(struct rad_handle *h)
{
 int n;

 if (h->type != RADIUS_SERVER) {
  generr(h, "denied function call");
  return (-1);
 }

 h->out[POS_LENGTH] = h->out_len >> 8;
 h->out[POS_LENGTH+1] = h->out_len;

 insert_message_authenticator(h,
     (h->in[POS_CODE] == RAD_ACCESS_REQUEST) ? 1 : 0);
 insert_request_authenticator(h, 1);


 n = sendto(h->fd, h->out, h->out_len, 0,
     (const struct sockaddr *)&h->servers[h->srv].addr,
     sizeof h->servers[h->srv].addr);
 if (n != h->out_len) {
  if (n == -1)
   generr(h, "sendto: %s", strerror(errno));
  else
   generr(h, "sendto: short write");
  return -1;
 }

 return 0;
}
