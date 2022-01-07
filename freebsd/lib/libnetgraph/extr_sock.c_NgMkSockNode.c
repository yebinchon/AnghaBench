
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u_long ;
typedef int u_char ;
struct sockaddr_ng {char* sg_data; int sg_len; void* sg_family; } ;
struct sockaddr {int dummy; } ;
struct nodeinfo {scalar_t__ id; } ;
struct ng_mesg {scalar_t__ data; } ;
typedef int namebuf ;


 void* AF_NETGRAPH ;
 int EAFNOSUPPORT ;
 int NGLOG (char*,...) ;
 int NGM_GENERIC_COOKIE ;
 int NGM_NODEINFO ;
 int NGSA_OVERHEAD ;
 int NG_CONTROL ;
 int NG_DATA ;
 int NG_NODESIZ ;
 char* NG_SOCKET_KLD ;
 scalar_t__ NgRecvMsg (int,struct ng_mesg*,int,int *) ;
 scalar_t__ NgSendMsg (int,char*,int ,int ,int *,int ) ;
 int SOCK_DGRAM ;
 int _gNgDebugLevel ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 scalar_t__ kldload (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int socket (void*,int ,int ) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char*) ;

int
NgMkSockNode(const char *name, int *csp, int *dsp)
{
 char namebuf[NG_NODESIZ];
 int cs = -1;
 int ds = -1;
 int errnosv;


 if (name && *name == 0)
  name = ((void*)0);




 if ((cs = socket(AF_NETGRAPH, SOCK_DGRAM, NG_CONTROL)) < 0) {
  if (errno == EAFNOSUPPORT) {
   if (kldload(NG_SOCKET_KLD) < 0) {
    errnosv = errno;
    if (_gNgDebugLevel >= 1)
     NGLOG("can't load %s", NG_SOCKET_KLD);
    goto errout;
   }
   cs = socket(AF_NETGRAPH, SOCK_DGRAM, NG_CONTROL);
   if (cs >= 0)
    goto gotNode;
  }
  errnosv = errno;
  if (_gNgDebugLevel >= 1)
   NGLOG("socket");
  goto errout;
 }

gotNode:

 if (name != ((void*)0)) {
  u_char sbuf[NG_NODESIZ + NGSA_OVERHEAD];
  struct sockaddr_ng *const sg = (struct sockaddr_ng *) sbuf;


  strlcpy(sg->sg_data, name, NG_NODESIZ);
  sg->sg_family = AF_NETGRAPH;
  sg->sg_len = strlen(sg->sg_data) + 1 + NGSA_OVERHEAD;
  if (bind(cs, (struct sockaddr *) sg, sg->sg_len) < 0) {
   errnosv = errno;
   if (_gNgDebugLevel >= 1)
    NGLOG("bind(%s)", sg->sg_data);
   goto errout;
  }


  strlcpy(namebuf, name, sizeof(namebuf));
 } else if (dsp != ((void*)0)) {
  union {
   u_char rbuf[sizeof(struct ng_mesg) +
       sizeof(struct nodeinfo)];
   struct ng_mesg res;
  } res;
  struct nodeinfo *const ni = (struct nodeinfo *) res.res.data;


  if (NgSendMsg(cs, ".", NGM_GENERIC_COOKIE,
      NGM_NODEINFO, ((void*)0), 0) < 0) {
   errnosv = errno;
   if (_gNgDebugLevel >= 1)
    NGLOG("send nodeinfo");
   goto errout;
  }
  if (NgRecvMsg(cs, &res.res, sizeof(res.rbuf), ((void*)0)) < 0) {
   errnosv = errno;
   if (_gNgDebugLevel >= 1)
    NGLOG("recv nodeinfo");
   goto errout;
  }


  snprintf(namebuf, sizeof(namebuf), "[%lx]", (u_long) ni->id);
 }


 if (dsp != ((void*)0)) {
  u_char sbuf[NG_NODESIZ + 1 + NGSA_OVERHEAD];
  struct sockaddr_ng *const sg = (struct sockaddr_ng *) sbuf;


  if ((ds = socket(AF_NETGRAPH, SOCK_DGRAM, NG_DATA)) < 0) {
   errnosv = errno;
   if (_gNgDebugLevel >= 1)
    NGLOG("socket");
   goto errout;
  }


  snprintf(sg->sg_data, NG_NODESIZ + 1, "%s:", namebuf);
  sg->sg_family = AF_NETGRAPH;
  sg->sg_len = strlen(sg->sg_data) + 1 + NGSA_OVERHEAD;
  if (connect(ds, (struct sockaddr *) sg, sg->sg_len) < 0) {
   errnosv = errno;
   if (_gNgDebugLevel >= 1)
    NGLOG("connect(%s)", sg->sg_data);
   goto errout;
  }
 }


 if (csp)
  *csp = cs;
 else
  close(cs);
 if (dsp)
  *dsp = ds;
 return (0);

errout:

 if (cs >= 0)
  close(cs);
 if (ds >= 0)
  close(ds);
 errno = errnosv;
 return (-1);
}
