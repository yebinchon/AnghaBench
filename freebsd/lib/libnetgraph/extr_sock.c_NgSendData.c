
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_ng {int sg_len; int sg_data; int sg_family; } ;
struct sockaddr {int dummy; } ;


 int AF_NETGRAPH ;
 int NGLOG (char*,int ) ;
 int NGLOGX (char*,char const*,size_t) ;
 int NGSA_OVERHEAD ;
 int NG_HOOKSIZ ;
 int _NgDebugBytes (int const*,size_t) ;
 int _NgDebugSockaddr (struct sockaddr_ng* const) ;
 int _gNgDebugLevel ;
 int errno ;
 scalar_t__ sendto (int,int const*,size_t,int ,struct sockaddr*,int) ;
 int strlcpy (int ,char const*,int) ;
 int strlen (int ) ;

int
NgSendData(int ds, const char *hook, const u_char * buf, size_t len)
{
 u_char sgbuf[NG_HOOKSIZ + NGSA_OVERHEAD];
 struct sockaddr_ng *const sg = (struct sockaddr_ng *) sgbuf;
 int errnosv;


 sg->sg_family = AF_NETGRAPH;
 strlcpy(sg->sg_data, hook, NG_HOOKSIZ);
 sg->sg_len = strlen(sg->sg_data) + 1 + NGSA_OVERHEAD;


 if (_gNgDebugLevel >= 2) {
  NGLOGX("WRITE PACKET to hook \"%s\" (%d bytes)", hook, len);
  _NgDebugSockaddr(sg);
  if (_gNgDebugLevel >= 3)
   _NgDebugBytes(buf, len);
 }


 if (sendto(ds, buf, len, 0, (struct sockaddr *) sg, sg->sg_len) < 0) {
  errnosv = errno;
  if (_gNgDebugLevel >= 1)
   NGLOG("sendto(%s)", sg->sg_data);
  errno = errnosv;
  return (-1);
 }


 return (0);
}
