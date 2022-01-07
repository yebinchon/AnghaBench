
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int val ;
typedef int trans_t ;
typedef int timeout ;
typedef int time_t ;
typedef int timeval ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int socklen_t ;
typedef int pbuf ;
struct TYPE_5__ {char* address; int port; int pgt; } ;
struct TYPE_6__ {int flags; int soc; int reconnect_time; int reconnect_cnt1; TYPE_1__ target; TYPE_3__* op; int reconnect_cnt; int redirect_cnt; } ;
typedef TYPE_2__ isess_t ;
struct TYPE_7__ {int port; char* targetAddress; int sockbufsize; int targetPortalGroupTag; } ;
typedef TYPE_3__ isc_opt_t ;
typedef int hints ;






 int IPPROTO_TCP ;
 int LOG_CRIT ;
 int LOG_INFO ;
 int PF_UNSPEC ;
 int SESS_CONNECTED ;
 int SESS_RECONNECT ;
 int SESS_REDIRECT ;
 int SHUT_RDWR ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_RCVTIMEO ;
 int SO_REUSEADDR ;
 int SO_SNDBUF ;
 int SO_SNDTIMEO ;
 int T1 ;
 int TCP_KEEPALIVE ;
 int TCP_NODELAY ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int debug (int,char*,char*,...) ;
 int debug_called (int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int shutdown (int,int ) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int strcmp (char*,char*) ;
 char* strerror (int) ;
 int syslog (int ,char*,...) ;
 int time (int ) ;

__attribute__((used)) static trans_t
tcpConnect(isess_t *sess)
{
     isc_opt_t *op = sess->op;
     int val, sv_errno, soc;
     struct addrinfo *res, *res0, hints;
     char pbuf[10];

     debug_called(3);
     if(sess->flags & (SESS_RECONNECT|SESS_REDIRECT)) {
   syslog(LOG_INFO, "%s", (sess->flags & SESS_RECONNECT)
   ? "Reconnect": "Redirected");

   debug(1, "%s", (sess->flags & SESS_RECONNECT) ? "Reconnect": "Redirected");
   shutdown(sess->soc, SHUT_RDWR);

   sess->soc = -1;

   sess->flags &= ~SESS_CONNECTED;
   if(sess->flags & SESS_REDIRECT) {
        sess->redirect_cnt++;
        sess->flags |= SESS_RECONNECT;
   } else
        sleep(2);
   sess->reconnect_cnt++;
     }

     snprintf(pbuf, sizeof(pbuf), "%d", op->port);
     memset(&hints, 0, sizeof(hints));
     hints.ai_family = PF_UNSPEC;
     hints.ai_socktype = SOCK_STREAM;
     debug(1, "targetAddress=%s port=%d", op->targetAddress, op->port);
     if((val = getaddrinfo(op->targetAddress, pbuf, &hints, &res0)) != 0) {
          fprintf(stderr, "getaddrinfo(%s): %s\n", op->targetAddress, gai_strerror(val));
          return 0;
     }
     sess->flags &= ~SESS_CONNECTED;
     sv_errno = 0;
     soc = -1;
     for(res = res0; res; res = res->ai_next) {
   soc = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
   if (soc == -1)
        continue;



   val = 1;
   if(setsockopt(soc, SOL_SOCKET, SO_REUSEADDR, &val, (socklen_t)sizeof(val)) < 0) {
        fprintf(stderr, "Cannot set socket SO_REUSEADDR %d: %s\n\n",
         errno, strerror(errno));
   }

   if(connect(soc, res->ai_addr, res->ai_addrlen) == 0)
        break;
   sv_errno = errno;
   close(soc);
   soc = -1;
     }
     freeaddrinfo(res0);
     if(soc != -1) {
   sess->soc = soc;
   if(sess->op->sockbufsize) {
        val = sess->op->sockbufsize * 1024;
        if((setsockopt(sess->soc, SOL_SOCKET, SO_SNDBUF, &val, sizeof(val)) < 0)
    || (setsockopt(sess->soc, SOL_SOCKET, SO_RCVBUF, &val, sizeof(val)) < 0)) {
      fprintf(stderr, "Cannot set socket sndbuf & rcvbuf to %d err=%d %s\n",
       val, errno, strerror(errno));
      return 0;
        }
   }
   sess->flags |= SESS_CONNECTED;
   return T1;
     }

     fprintf(stderr, "errno=%d\n", sv_errno);
     perror("connect");
     switch(sv_errno) {
     case 131:
     case 130:
     case 129:
     case 128:
   if((sess->flags & SESS_REDIRECT) == 0) {
        if(strcmp(op->targetAddress, sess->target.address) != 0) {
      syslog(LOG_INFO, "reconnecting to original target address");
      free(op->targetAddress);
      op->targetAddress = sess->target.address;
      op->port = sess->target.port;
      op->targetPortalGroupTag = sess->target.pgt;
      return T1;
        }
   }
   sleep(5);
   return T1;
     default:
   return 0;
     }
}
