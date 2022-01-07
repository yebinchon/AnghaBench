
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int time_t ;
struct ssh {TYPE_1__* chanctxt; } ;
typedef int fd_set ;
typedef int fd_mask ;
struct TYPE_2__ {int channel_max_fd; } ;


 int CHAN_PRE ;
 int MAXIMUM (int,int ) ;
 int NFDBITS ;
 int SIZE_MAX ;
 int channel_before_prepare_select (struct ssh*) ;
 int channel_handler (struct ssh*,int ,int *,int *,int *) ;
 int fatal (char*,int) ;
 int howmany (int,int ) ;
 int memset (int *,int ,int) ;
 int ssh_packet_is_rekeying (struct ssh*) ;
 int * xreallocarray (int *,int,int) ;

void
channel_prepare_select(struct ssh *ssh, fd_set **readsetp, fd_set **writesetp,
    int *maxfdp, u_int *nallocp, time_t *minwait_secs)
{
 u_int n, sz, nfdset;

 channel_before_prepare_select(ssh);

 n = MAXIMUM(*maxfdp, ssh->chanctxt->channel_max_fd);

 nfdset = howmany(n+1, NFDBITS);

 if (nfdset && SIZE_MAX / nfdset < sizeof(fd_mask))
  fatal("channel_prepare_select: max_fd (%d) is too large", n);
 sz = nfdset * sizeof(fd_mask);


 if (*readsetp == ((void*)0) || sz > *nallocp) {
  *readsetp = xreallocarray(*readsetp, nfdset, sizeof(fd_mask));
  *writesetp = xreallocarray(*writesetp, nfdset, sizeof(fd_mask));
  *nallocp = sz;
 }
 *maxfdp = n;
 memset(*readsetp, 0, sz);
 memset(*writesetp, 0, sz);

 if (!ssh_packet_is_rekeying(ssh))
  channel_handler(ssh, CHAN_PRE, *readsetp, *writesetp,
      minwait_secs);
}
