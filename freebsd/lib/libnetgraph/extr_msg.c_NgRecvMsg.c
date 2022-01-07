
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_ng {int sg_data; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ng_mesg {TYPE_1__ header; } ;
typedef int socklen_t ;
typedef int sgbuf ;


 int NGF_RESP ;
 int NGLOG (char*) ;
 int NGLOGX (char*,char*) ;
 int NGSA_OVERHEAD ;
 int NG_PATHSIZ ;
 int _NgDebugMsg (struct ng_mesg*,int ) ;
 int _NgDebugSockaddr (struct sockaddr_ng* const) ;
 int _gNgDebugLevel ;
 int errno ;
 int recvfrom (int,struct ng_mesg*,size_t,int ,struct sockaddr*,int*) ;
 int strlcpy (char*,int ,int) ;

int
NgRecvMsg(int cs, struct ng_mesg *rep, size_t replen, char *path)
{
 u_char sgbuf[NG_PATHSIZ + NGSA_OVERHEAD];
 struct sockaddr_ng *const sg = (struct sockaddr_ng *) sgbuf;
 socklen_t sglen = sizeof(sgbuf);
 int len, errnosv;


 len = recvfrom(cs, rep, replen, 0, (struct sockaddr *) sg, &sglen);
 if (len < 0) {
  errnosv = errno;
  if (_gNgDebugLevel >= 1)
   NGLOG("recvfrom");
  goto errout;
 }
 if (path != ((void*)0))
  strlcpy(path, sg->sg_data, NG_PATHSIZ);


 if (_gNgDebugLevel >= 2) {
  NGLOGX("RECEIVED %s:",
      (rep->header.flags & NGF_RESP) ? "RESPONSE" : "MESSAGE");
  _NgDebugSockaddr(sg);
  _NgDebugMsg(rep, sg->sg_data);
 }


 return (len);

errout:
 errno = errnosv;
 return (-1);
}
