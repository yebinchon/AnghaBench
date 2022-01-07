
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_long ;
typedef int thetime ;
struct timeval {int tv_sec; int member_0; scalar_t__ tv_usec; int member_1; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sin ;
struct TYPE_9__ {int ep_len; TYPE_3__* ep_val; } ;
struct TYPE_10__ {TYPE_1__ ep; } ;
typedef TYPE_2__ nis_server ;
typedef int from ;
typedef int fd_set ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_11__ {char* uaddr; int proto; } ;
typedef TYPE_3__ endpoint ;
typedef int CLIENT ;


 int AF_INET ;
 int EINTR ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int RPCBPROC_GETTIME ;
 int RPCBPROG ;
 int RPCBVERS ;
 int RPC_ANYSOCK ;
 int RPC_SUCCESS ;
 int SIGALRM ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int TOFFSET ;
 int _close (int) ;
 int _connect (int,struct sockaddr*,int) ;
 int _read (int,char*,int) ;
 int _recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 int _rpc_dtablesize () ;
 int _select (int ,int *,int *,int *,struct timeval*) ;
 int _sendto (int,int*,int,int ,struct sockaddr*,int) ;
 int _socket (int ,int,int ) ;
 int alarm (int) ;
 void alarm_hndler (int) ;
 int bzero (char*,int) ;
 int clnt_call (int *,int ,int ,int *,int ,int*,struct timeval) ;
 int clnt_destroy (int *) ;
 int * clnttcp_create (struct sockaddr_in*,int ,int ,int*,int ,int ) ;
 int errno ;
 int free_eps (TYPE_3__*,int) ;
 TYPE_2__* get_server (struct sockaddr_in*,char*,TYPE_2__*,TYPE_3__*,int) ;
 int gettimeofday (struct timeval*,int ) ;
 int msg (char*) ;
 int ntohl (int) ;
 scalar_t__ saw_alarm ;
 scalar_t__ signal (int ,void (*) (int)) ;
 int sprintf (char*,char*,int,int,int,int) ;
 int sscanf (char*,char*,int*,int*,int*,int*) ;
 scalar_t__ strcasecmp (int ,char*) ;
 char* strdup (char*) ;
 scalar_t__ uaddr_to_sockaddr (char*,struct sockaddr_in*) ;
 scalar_t__ xdr_u_long ;
 scalar_t__ xdr_void ;

int
__rpc_get_time_offset(struct timeval *td, nis_server *srv, char *thost,
    char **uaddr, struct sockaddr_in *netid)
{
 CLIENT *clnt;
 endpoint *ep,
    *useep = ((void*)0);
 char *useua = ((void*)0);
 int epl, i;
 enum clnt_stat status;
 u_long thetime, delta;
 int needfree = 0;
 struct timeval tv;
 int time_valid;
 int udp_ep = -1, tcp_ep = -1;
 int a1, a2, a3, a4;
 char ut[64], ipuaddr[64];
 endpoint teps[32];
 nis_server tsrv;
 void (*oldsig)(int) = ((void*)0);
 struct sockaddr_in sin;
 socklen_t len;
 int s = RPC_ANYSOCK;
 int type = 0;

 td->tv_sec = 0;
 td->tv_usec = 0;





 if (*uaddr == ((void*)0)) {
  if ((srv != ((void*)0)) && (thost != ((void*)0))) {
   msg("both timehost and srv pointer used!");
   return (0);
  }
  if (! srv) {
   srv = get_server(netid, thost, &tsrv, teps, 32);
   if (srv == ((void*)0)) {
    msg("unable to contruct server data.");
    return (0);
   }
   needfree = 1;
  }

  ep = srv->ep.ep_val;
  epl = srv->ep.ep_len;


  for (i = 0;
   (i < epl) && ((udp_ep == -1) || (tcp_ep == -1)); i++) {
   if (strcasecmp(ep[i].proto, "udp") == 0)
    udp_ep = i;
   if (strcasecmp(ep[i].proto, "tcp") == 0)
    tcp_ep = i;
  }


  if (tcp_ep > -1) {
   useep = &ep[tcp_ep];
   useua = ep[tcp_ep].uaddr;
   type = SOCK_STREAM;
  } else if (udp_ep > -1) {
   useep = &ep[udp_ep];
   useua = ep[udp_ep].uaddr;
   type = SOCK_DGRAM;
  }

  if (useep == ((void*)0)) {
   msg("no acceptable transport endpoints.");
   if (needfree)
    free_eps(teps, tsrv.ep.ep_len);
   return (0);
  }
 }




 if (*uaddr != ((void*)0))
  useua = *uaddr;


 sscanf(useua, "%d.%d.%d.%d.", &a1, &a2, &a3, &a4);
 sprintf(ipuaddr, "%d.%d.%d.%d.0.111", a1, a2, a3, a4);
 useua = &ipuaddr[0];

 bzero((char *)&sin, sizeof(sin));
 if (uaddr_to_sockaddr(useua, &sin)) {
  msg("unable to translate uaddr to sockaddr.");
  if (needfree)
   free_eps(teps, tsrv.ep.ep_len);
  return (0);
 }
 clnt = clnttcp_create(&sin, RPCBPROG, RPCBVERS, &s, 0, 0);
 if (clnt == ((void*)0)) {
  msg("unable to create client handle to rpcbind.");
  if (needfree)
   free_eps(teps, tsrv.ep.ep_len);
  return (0);
 }

 tv.tv_sec = 5;
 tv.tv_usec = 0;
 time_valid = 0;
 status = clnt_call(clnt, RPCBPROC_GETTIME, (xdrproc_t)xdr_void, ((void*)0),
     (xdrproc_t)xdr_u_long, &thetime, tv);





 if (status == RPC_SUCCESS)
  time_valid = 1;
 else {
  int save;


  if (clnt != ((void*)0)) {
   clnt_destroy(clnt);
   clnt = ((void*)0);
  }
  sscanf(useua, "%d.%d.%d.%d.", &a1, &a2, &a3, &a4);
  sprintf(ut, "%d.%d.%d.%d.0.37", a1, a2, a3, a4);

  if (uaddr_to_sockaddr(ut, &sin)) {
   msg("cannot convert timeservice uaddr to sockaddr.");
   goto error;
  }

  s = _socket(AF_INET, type, 0);
  if (s == -1) {
   msg("unable to open fd to network.");
   goto error;
  }





  if (type == SOCK_DGRAM) {
   struct timeval timeout = { 20, 0 };
   struct sockaddr_in from;
   fd_set readfds;
   int res;

   if (_sendto(s, &thetime, sizeof(thetime), 0,
    (struct sockaddr *)&sin, sizeof(sin)) == -1) {
    msg("udp : sendto failed.");
    goto error;
   }
   do {
    FD_ZERO(&readfds);
    FD_SET(s, &readfds);
    res = _select(_rpc_dtablesize(), &readfds,
         (fd_set *)((void*)0), (fd_set *)((void*)0), &timeout);
   } while (res < 0 && errno == EINTR);
   if (res <= 0)
    goto error;
   len = sizeof(from);
   res = _recvfrom(s, (char *)&thetime, sizeof(thetime), 0,
           (struct sockaddr *)&from, &len);
   if (res == -1) {
    msg("recvfrom failed on udp transport.");
    goto error;
   }
   time_valid = 1;
  } else {
   int res;

   oldsig = (void (*)(int))signal(SIGALRM, alarm_hndler);
   saw_alarm = 0;
   alarm(20);
   res = _connect(s, (struct sockaddr *)&sin, sizeof(sin));
   if (res == -1) {
    msg("failed to connect to tcp endpoint.");
    goto error;
   }
   if (saw_alarm) {
    msg("alarm caught it, must be unreachable.");
    goto error;
   }
   res = _read(s, (char *)&thetime, sizeof(thetime));
   if (res != sizeof(thetime)) {
    if (saw_alarm)
     msg("timed out TCP call.");
    else
     msg("wrong size of results returned");

    goto error;
   }
   time_valid = 1;
  }
  save = errno;
  (void)_close(s);
  errno = save;
  s = RPC_ANYSOCK;

  if (time_valid) {
   thetime = ntohl(thetime);
   thetime = thetime - TOFFSET;
  } else
   thetime = 0;
 }

 gettimeofday(&tv, 0);

error:




 if (s != RPC_ANYSOCK)
  (void)_close(s);

 if (clnt != ((void*)0))
  clnt_destroy(clnt);

 alarm(0);
 if (oldsig) {
  signal(SIGALRM, oldsig);
 }





 if (time_valid) {
  if (*uaddr == ((void*)0))
   *uaddr = strdup(useua);


  tv.tv_sec += (tv.tv_sec > 500000) ? 1 : 0;
  delta = (thetime > tv.tv_sec) ? thetime - tv.tv_sec :
      tv.tv_sec - thetime;
  td->tv_sec = (thetime < tv.tv_sec) ? - delta : delta;
  td->tv_usec = 0;
 } else {
  msg("unable to get the server's time.");
 }

 if (needfree)
  free_eps(teps, tsrv.ep.ep_len);

 return (time_valid);
}
