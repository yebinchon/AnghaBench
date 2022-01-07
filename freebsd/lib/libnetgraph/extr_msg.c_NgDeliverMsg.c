
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_ng {int sg_len; int sg_data; int sg_family; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int fd; scalar_t__ revents; int events; } ;
struct TYPE_2__ {size_t arglen; int flags; int cmd; } ;
struct ng_mesg {TYPE_1__ header; int data; } ;


 int AF_NETGRAPH ;
 int INFTIM ;
 int NGF_RESP ;
 int NGLOG (char*,...) ;
 int NGLOGX (char*,char*) ;
 int NGM_HASREPLY ;
 int NGSA_OVERHEAD ;
 int NG_PATHSIZ ;
 int POLLIN ;
 int _NgDebugMsg (struct ng_mesg*,int ) ;
 int _NgDebugSockaddr (struct sockaddr_ng* const) ;
 int _gNgDebugLevel ;
 int errno ;
 int free (int *) ;
 int * malloc (int) ;
 int memcpy (int ,void const*,size_t) ;
 int poll (struct pollfd*,int,int ) ;
 scalar_t__ sendto (int,struct ng_mesg*,int,int ,struct sockaddr*,int) ;
 int strlcpy (int ,char const*,int) ;
 int strlen (int ) ;

__attribute__((used)) static int
NgDeliverMsg(int cs, const char *path,
 const struct ng_mesg *hdr, const void *args, size_t arglen)
{
 u_char sgbuf[NG_PATHSIZ + NGSA_OVERHEAD];
 struct sockaddr_ng *const sg = (struct sockaddr_ng *) sgbuf;
 u_char *buf = ((void*)0);
 struct ng_mesg *msg;
 int errnosv = 0;
 int rtn = 0;


 if (args == ((void*)0))
  arglen = 0;


 if ((buf = malloc(sizeof(*msg) + arglen)) == ((void*)0)) {
  errnosv = errno;
  if (_gNgDebugLevel >= 1)
   NGLOG("malloc");
  rtn = -1;
  goto done;
 }
 msg = (struct ng_mesg *) buf;


 *msg = *hdr;
 msg->header.arglen = arglen;
 memcpy(msg->data, args, arglen);


 sg->sg_family = AF_NETGRAPH;

 strlcpy(sg->sg_data, path, NG_PATHSIZ);
 sg->sg_len = strlen(sg->sg_data) + 1 + NGSA_OVERHEAD;


 if (_gNgDebugLevel >= 2) {
  NGLOGX("SENDING %s:",
      (msg->header.flags & NGF_RESP) ? "RESPONSE" : "MESSAGE");
  _NgDebugSockaddr(sg);
  _NgDebugMsg(msg, sg->sg_data);
 }


 if (sendto(cs, msg, sizeof(*msg) + arglen,
     0, (struct sockaddr *) sg, sg->sg_len) < 0) {
  errnosv = errno;
  if (_gNgDebugLevel >= 1)
   NGLOG("sendto(%s)", sg->sg_data);
  rtn = -1;
  goto done;
 }


 if (msg->header.cmd & NGM_HASREPLY && !(msg->header.flags & NGF_RESP)) {
  struct pollfd rfds;
  int n;

  rfds.fd = cs;
  rfds.events = POLLIN;
  rfds.revents = 0;
  n = poll(&rfds, 1, INFTIM);
  if (n == -1) {
   errnosv = errno;
   if (_gNgDebugLevel >= 1)
    NGLOG("poll");
   rtn = -1;
  }
 }

done:

 free(buf);
 errno = errnosv;
 return (rtn);
}
