
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct pollfd {int fd; int events; int revents; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; struct sockaddr const* ai_addr; struct addrinfo* ai_next; } ;
typedef int socklen_t ;
typedef int sname ;
typedef int hname ;
typedef int error ;
typedef int bname ;


 int EBADF ;
 int EINPROGRESS ;
 int EINTR ;
 int ETIMEDOUT ;
 int F_GETFL ;
 int F_SETFL ;
 int INFTIM ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int O_NONBLOCK ;
 int POLLIN ;
 int POLLOUT ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int bind (int,struct sockaddr const*,int) ;
 struct addrinfo* bindai ;
 int connect (int,struct sockaddr const*,int) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int ftp_poll (struct pollfd*,int,int) ;
 scalar_t__ getnameinfo (struct sockaddr const*,int,char*,int,char*,int,int) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ quit_time ;
 int setupsockbufsize (int) ;
 int strlcpy (char*,char*,int) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;
 int warn (char*,char*,...) ;

int
ftp_connect(int sock, const struct sockaddr *name, socklen_t namelen)
{
 int flags, rv, timeout, error;
 socklen_t slen;
 struct timeval endtime, now, td;
 struct pollfd pfd[1];
 char hname[NI_MAXHOST];
 char sname[NI_MAXSERV];

 setupsockbufsize(sock);
 if (getnameinfo(name, namelen,
     hname, sizeof(hname), sname, sizeof(sname),
     NI_NUMERICHOST | NI_NUMERICSERV) != 0) {
  strlcpy(hname, "?", sizeof(hname));
  strlcpy(sname, "?", sizeof(sname));
 }

 if (bindai != ((void*)0)) {
  struct addrinfo *ai;

  for (ai = bindai; ai != ((void*)0); ai = ai->ai_next) {
   if (ai->ai_family == name->sa_family)
    break;
  }
  if (ai == ((void*)0))
   ai = bindai;
  if (bind(sock, ai->ai_addr, ai->ai_addrlen) == -1) {
   char bname[NI_MAXHOST];
   int saveerr;

   saveerr = errno;
   if (getnameinfo(ai->ai_addr, ai->ai_addrlen,
       bname, sizeof(bname), ((void*)0), 0, NI_NUMERICHOST) != 0)
    strlcpy(bname, "?", sizeof(bname));
   errno = saveerr;
   warn("Can't bind to `%s'", bname);
   return -1;
  }
 }


 if ((flags = fcntl(sock, F_GETFL, 0)) == -1) {
  warn("Can't %s socket flags for connect to `%s:%s'",
      "save", hname, sname);
  return -1;
 }

 if (fcntl(sock, F_SETFL, flags | O_NONBLOCK) == -1) {
  warn("Can't set socket non-blocking for connect to `%s:%s'",
      hname, sname);
  return -1;
 }



 pfd[0].fd = sock;
 pfd[0].events = POLLIN|POLLOUT;

 if (quit_time > 0) {
  (void)gettimeofday(&endtime, ((void*)0));
  endtime.tv_sec += quit_time;
 }

 rv = connect(sock, name, namelen);
 if (rv == -1) {
  if (errno != EINPROGRESS) {
 connecterror:
   warn("Can't connect to `%s:%s'", hname, sname);
   return -1;
  }


  do {
   if (quit_time > 0) {
    (void)gettimeofday(&now, ((void*)0));
    timersub(&endtime, &now, &td);
    timeout = td.tv_sec * 1000 + td.tv_usec/1000;
    if (timeout < 0)
     timeout = 0;
   } else {
    timeout = INFTIM;
   }
   pfd[0].revents = 0;
   rv = ftp_poll(pfd, 1, timeout);

  } while (rv == -1 && errno == EINTR);

  if (rv == 0) {
   errno = ETIMEDOUT;
   goto connecterror;
  }

  if (rv == -1) {
   goto connecterror;
  } else if (pfd[0].revents & (POLLIN|POLLOUT)) {
   slen = sizeof(error);
   if (getsockopt(sock, SOL_SOCKET, SO_ERROR,
       &error, &slen) == -1) {

    goto connecterror;
   } else if (error != 0) {
    errno = error;
    goto connecterror;
   }
  } else {
   errno = EBADF;
   goto connecterror;
  }
 }

 if (fcntl(sock, F_SETFL, flags) == -1) {

  warn("Can't %s socket flags for connect to `%s:%s'",
      "restore", hname, sname);
  return -1;
 }
 return 0;
}
