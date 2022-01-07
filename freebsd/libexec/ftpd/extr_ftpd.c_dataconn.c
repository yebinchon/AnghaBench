
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union sockunion {scalar_t__ su_family; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sizebuf ;
typedef int portbuf ;
typedef int off_t ;
typedef int intmax_t ;
typedef int hostbuf ;
typedef int fd_set ;
struct TYPE_7__ {int su_len; } ;
struct TYPE_6__ {int su_len; } ;
struct TYPE_5__ {int su_len; } ;
typedef int FILE ;


 scalar_t__ AF_INET ;
 int EADDRINUSE ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int F_GETFL ;
 int F_SETFL ;
 int IPPROTO_IP ;
 int IPTOS_THROUGHPUT ;
 int IP_TOS ;
 int LOG_WARNING ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int O_NONBLOCK ;
 scalar_t__ TYPE_A ;
 int accept (int,struct sockaddr*,int *) ;
 scalar_t__ byte_count ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int ) ;
 TYPE_4__ ctrl_addr ;
 int data ;
 TYPE_1__ data_dest ;
 TYPE_2__ data_source ;
 int errno ;
 int fclose (int *) ;
 int fcntl (int,int ,int) ;
 int * fdopen (int,char*) ;
 int file_size ;
 int fileno (int *) ;
 int * getdatasock (char*) ;
 scalar_t__ getnameinfo (struct sockaddr*,int ,char*,int,char*,int,int) ;
 TYPE_1__ his_addr ;
 int pdata ;
 int reply (int,char*,...) ;
 scalar_t__ select (int,int *,int *,int *,struct timeval*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int sleep (scalar_t__) ;
 int snprintf (char*,int,char*,int ) ;
 char* strerror (int) ;
 scalar_t__ swaitint ;
 int swaitmax ;
 int syslog (int ,char*) ;
 scalar_t__ type ;
 int usedefault ;

__attribute__((used)) static FILE *
dataconn(char *name, off_t size, char *mode)
{
 char sizebuf[32];
 FILE *file;
 int retry = 0, tos, conerrno;

 file_size = size;
 byte_count = 0;
 if (size != -1)
  (void) snprintf(sizebuf, sizeof(sizebuf),
    " (%jd bytes)", (intmax_t)size);
 else
  *sizebuf = '\0';
 if (pdata >= 0) {
  union sockunion from;
  socklen_t fromlen = ctrl_addr.su_len;
  int flags, s;
  struct timeval timeout;
  fd_set set;

  FD_ZERO(&set);
  FD_SET(pdata, &set);

  timeout.tv_usec = 0;
  timeout.tv_sec = 120;







  if ((flags = fcntl(pdata, F_GETFL, 0)) == -1 ||
      fcntl(pdata, F_SETFL, flags | O_NONBLOCK) == -1)
   goto pdata_err;
  if (select(pdata+1, &set, ((void*)0), ((void*)0), &timeout) <= 0 ||
      (s = accept(pdata, (struct sockaddr *) &from, &fromlen)) < 0)
   goto pdata_err;
  (void) close(pdata);
  pdata = s;




  if ((flags = fcntl(pdata, F_GETFL, 0)) == -1 ||
      fcntl(pdata, F_SETFL, flags & ~O_NONBLOCK) == -1)
   goto pdata_err;
  reply(150, "Opening %s mode data connection for '%s'%s.",
       type == TYPE_A ? "ASCII" : "BINARY", name, sizebuf);
  return (fdopen(pdata, mode));
pdata_err:
  reply(425, "Can't open data connection.");
  (void) close(pdata);
  pdata = -1;
  return (((void*)0));
 }
 if (data >= 0) {
  reply(125, "Using existing data connection for '%s'%s.",
      name, sizebuf);
  usedefault = 1;
  return (fdopen(data, mode));
 }
 if (usedefault)
  data_dest = his_addr;
 usedefault = 1;
 do {
  file = getdatasock(mode);
  if (file == ((void*)0)) {
   char hostbuf[NI_MAXHOST], portbuf[NI_MAXSERV];

   if (getnameinfo((struct sockaddr *)&data_source,
    data_source.su_len,
    hostbuf, sizeof(hostbuf) - 1,
    portbuf, sizeof(portbuf) - 1,
    NI_NUMERICHOST|NI_NUMERICSERV))
     *hostbuf = *portbuf = 0;
   hostbuf[sizeof(hostbuf) - 1] = 0;
   portbuf[sizeof(portbuf) - 1] = 0;
   reply(425, "Can't create data socket (%s,%s): %s.",
    hostbuf, portbuf, strerror(errno));
   return (((void*)0));
  }
  data = fileno(file);
  conerrno = 0;
  if (connect(data, (struct sockaddr *)&data_dest,
      data_dest.su_len) == 0)
   break;
  conerrno = errno;
  (void) fclose(file);
  data = -1;
  if (conerrno == EADDRINUSE) {
   sleep(swaitint);
   retry += swaitint;
  } else {
   break;
  }
 } while (retry <= swaitmax);
 if (conerrno != 0) {
  reply(425, "Can't build data connection: %s.",
      strerror(conerrno));
  return (((void*)0));
 }
 reply(150, "Opening %s mode data connection for '%s'%s.",
      type == TYPE_A ? "ASCII" : "BINARY", name, sizebuf);
 return (file);
}
