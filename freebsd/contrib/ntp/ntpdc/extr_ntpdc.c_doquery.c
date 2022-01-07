
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;




 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ IMPL_XNTPD ;






 int fprintf (int ,char*,...) ;
 int getresponse (int,int,size_t*,size_t*,char const**,int) ;
 int havehost ;
 scalar_t__ impl_ver ;
 int recv (scalar_t__,char*,int,int ) ;
 int req_pkt_size ;
 int select (scalar_t__,int *,int *,int *,struct sock_timeval*) ;
 int sendrequest (int,int,int,size_t,size_t,char const*) ;
 scalar_t__ sockfd ;
 int stderr ;
 int warning (char*) ;

int
doquery(
 int implcode,
 int reqcode,
 int auth,
 size_t qitems,
 size_t qsize,
 const char *qdata,
 size_t *ritems,
 size_t *rsize,
 const char **rdata,
  int quiet_mask,
 int esize
 )
{
 int res;
 char junk[512];
 fd_set fds;
 struct sock_timeval tvzero;




 if (!havehost) {
  (void) fprintf(stderr, "***No host open, use `host' command\n");
  return -1;
 }




again:
 do {
  tvzero.tv_sec = tvzero.tv_usec = 0;
  FD_ZERO(&fds);
  FD_SET(sockfd, &fds);
  res = select(sockfd+1, &fds, ((void*)0), ((void*)0), &tvzero);
  if (res == -1) {
   warning("polling select");
   return -1;
  } else if (res > 0)

      (void) recv(sockfd, junk, sizeof junk, 0);
 } while (res > 0);





 res = sendrequest(implcode, reqcode, auth, qitems, qsize, qdata);
 if (res != 0)
  return res;




 res = getresponse(implcode, reqcode, ritems, rsize, rdata, esize);




 if (res == 132 && req_pkt_size != 48) {
  int oldsize;

  oldsize = req_pkt_size;

  switch(req_pkt_size) {
  case 128:
   req_pkt_size = 160;
   break;
  case 160:
   req_pkt_size = 48;
   break;
  }
  if (impl_ver == IMPL_XNTPD) {
   fprintf(stderr,
       "***Warning changing to older implementation\n");
   return 131;
  }

  fprintf(stderr,
      "***Warning changing the request packet size from %d to %d\n",
      oldsize, req_pkt_size);
  goto again;
 }


  if ((res > 0) && (((1 << res) & quiet_mask) == 0)) {
  switch(res) {
  case 131:

   if (implcode == IMPL_XNTPD)
    break;
   (void) fprintf(stderr,
           "***Server implementation incompatible with our own\n");
   break;
  case 129:
   (void) fprintf(stderr,
           "***Server doesn't implement this request\n");
   break;
  case 132:
   (void) fprintf(stderr,
           "***Server reports a format error in the received packet (shouldn't happen)\n");
   break;
  case 130:
   (void) fprintf(stderr,
           "***Server reports data not found\n");
   break;
  case 133:
   (void) fprintf(stderr, "***Permission denied\n");
   break;
  case 134:
   (void) fprintf(stderr, "***Request timed out\n");
   break;
  case 135:
   (void) fprintf(stderr,
           "***Response from server was incomplete\n");
   break;
  default:
   (void) fprintf(stderr,
           "***Server returns unknown error code %d\n", res);
   break;
  }
 }
 return res;
}
