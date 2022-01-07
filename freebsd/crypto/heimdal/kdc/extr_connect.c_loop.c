
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct descr {int s; scalar_t__ type; scalar_t__ timeout; scalar_t__ len; int addr_string; } ;
typedef int krb5_kdc_configuration ;
typedef int krb5_context ;
typedef int fd_set ;


 int EINTR ;
 int FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 scalar_t__ SIGINT ;
 scalar_t__ SIGTERM ;
 scalar_t__ SIGXCPU ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 int TCP_TIMEOUT ;
 int clear_descr (struct descr*) ;
 int errno ;
 scalar_t__ exit_flag ;
 int free (struct descr*) ;
 int handle_tcp (int ,int *,struct descr*,size_t,int) ;
 int handle_udp (int ,int *,struct descr*) ;
 int init_descr (struct descr*) ;
 unsigned int init_sockets (int ,int *,struct descr**) ;
 int kdc_log (int ,int *,int,char*,...) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_warn (int ,int ,char*) ;
 int krb5_warnx (int ,char*) ;
 int memset (struct descr*,int ,int) ;
 struct descr* realloc (struct descr*,unsigned int) ;
 int reinit_descrs (struct descr*,unsigned int) ;
 int rk_IS_BAD_SOCKET (int) ;
 int rk_SOCK_ERRNO ;
 int select (int,int *,int ,int ,struct timeval*) ;
 scalar_t__ time (int *) ;

void
loop(krb5_context context,
     krb5_kdc_configuration *config)
{
    struct descr *d;
    unsigned int ndescr;

    ndescr = init_sockets(context, config, &d);
    if(ndescr <= 0)
 krb5_errx(context, 1, "No sockets!");
    kdc_log(context, config, 0, "KDC started");
    while(exit_flag == 0){
 struct timeval tmout;
 fd_set fds;
 int min_free = -1;
 int max_fd = 0;
 size_t i;

 FD_ZERO(&fds);
 for(i = 0; i < ndescr; i++) {
     if(!rk_IS_BAD_SOCKET(d[i].s)){
  if(d[i].type == SOCK_STREAM &&
     d[i].timeout && d[i].timeout < time(((void*)0))) {
      kdc_log(context, config, 1,
       "TCP-connection from %s expired after %lu bytes",
       d[i].addr_string, (unsigned long)d[i].len);
      clear_descr(&d[i]);
      continue;
  }

  if(max_fd < d[i].s)
      max_fd = d[i].s;





  FD_SET(d[i].s, &fds);
     } else if(min_free < 0 || i < (size_t)min_free)
  min_free = i;
 }
 if(min_free == -1){
     struct descr *tmp;
     tmp = realloc(d, (ndescr + 4) * sizeof(*d));
     if(tmp == ((void*)0))
  krb5_warnx(context, "No memory");
     else {
  d = tmp;
  reinit_descrs (d, ndescr);
  memset(d + ndescr, 0, 4 * sizeof(*d));
  for(i = ndescr; i < ndescr + 4; i++)
      init_descr (&d[i]);
  min_free = ndescr;
  ndescr += 4;
     }
 }

 tmout.tv_sec = TCP_TIMEOUT;
 tmout.tv_usec = 0;
 switch(select(max_fd + 1, &fds, 0, 0, &tmout)){
 case 0:
     break;
 case -1:
     if (errno != EINTR)
  krb5_warn(context, rk_SOCK_ERRNO, "select");
     break;
 default:
     for(i = 0; i < ndescr; i++)
  if(!rk_IS_BAD_SOCKET(d[i].s) && FD_ISSET(d[i].s, &fds)) {
      if(d[i].type == SOCK_DGRAM)
   handle_udp(context, config, &d[i]);
      else if(d[i].type == SOCK_STREAM)
   handle_tcp(context, config, d, i, min_free);
  }
 }
    }
    if (0);




    else if(exit_flag == SIGINT || exit_flag == SIGTERM)
 kdc_log(context, config, 0, "Terminated");
    else
 kdc_log(context, config, 0, "Unexpected exit reason: %d", exit_flag);
    free (d);
}
