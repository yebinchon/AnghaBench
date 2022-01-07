
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timeval {int dummy; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct rad_handle {scalar_t__ type; int fd; int* out; scalar_t__ pass_pos; scalar_t__ eap_msg; int out_len; int srv; int num_servers; TYPE_2__* servers; scalar_t__ chap_pass; int bindto; } ;
struct TYPE_4__ {scalar_t__ is_dead; scalar_t__ next_probe; scalar_t__ dead_time; scalar_t__ num_tries; } ;


 int AF_INET ;
 int IPPROTO_UDP ;
 int PF_INET ;
 size_t POS_CODE ;
 size_t POS_LENGTH ;
 scalar_t__ RADIUS_SERVER ;
 int RAD_ACCESS_REQUEST ;
 int SOCK_DGRAM ;
 int bind (int,struct sockaddr const*,int) ;
 int close (int) ;
 int errno ;
 int generr (struct rad_handle*,char*,...) ;
 int htons (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int rad_continue_send_request (struct rad_handle*,int ,int*,struct timeval*) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 scalar_t__ time (int *) ;

int
rad_init_send_request(struct rad_handle *h, int *fd, struct timeval *tv)
{
 int srv;
 time_t now;
 struct sockaddr_in sin;

 if (h->type == RADIUS_SERVER) {
  generr(h, "denied function call");
  return (-1);
 }

 if (h->fd == -1) {
  if ((h->fd = socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1) {
   generr(h, "Cannot create socket: %s", strerror(errno));
   return -1;
  }
  memset(&sin, 0, sizeof sin);
  sin.sin_len = sizeof sin;
  sin.sin_family = AF_INET;
  sin.sin_addr.s_addr = h->bindto;
  sin.sin_port = htons(0);
  if (bind(h->fd, (const struct sockaddr *)&sin,
      sizeof sin) == -1) {
   generr(h, "bind: %s", strerror(errno));
   close(h->fd);
   h->fd = -1;
   return -1;
  }
 }

 if (h->out[POS_CODE] != RAD_ACCESS_REQUEST) {

  if (h->pass_pos || h->chap_pass) {
   generr(h, "User or Chap Password"
       " in accounting request");
   return -1;
  }
 } else {
  if (h->eap_msg == 0) {

   if (h->pass_pos == 0 && !h->chap_pass) {
    generr(h, "No User or Chap Password"
        " attributes given");
    return -1;
   }
   if (h->pass_pos != 0 && h->chap_pass) {
    generr(h, "Both User and Chap Password"
        " attributes given");
    return -1;
   }
  }
 }


 h->out[POS_LENGTH] = h->out_len >> 8;
 h->out[POS_LENGTH+1] = h->out_len;

 h->srv = 0;
 now = time(((void*)0));
 for (srv = 0; srv < h->num_servers; srv++)
  h->servers[srv].num_tries = 0;

 for (srv = 0; srv < h->num_servers; srv++) {
  if (h->servers[srv].is_dead == 0)
   break;
  if (h->servers[srv].dead_time &&
      h->servers[srv].next_probe <= now) {
       h->servers[srv].is_dead = 0;
   break;
  }
  h->srv++;
 }


 if (h->srv == h->num_servers) {
  for (srv = 0; srv < h->num_servers; srv++) {
       h->servers[srv].is_dead = 0;
   h->servers[srv].next_probe = 0;
  }
  h->srv = 0;
 }

 return rad_continue_send_request(h, 0, fd, tv);
}
