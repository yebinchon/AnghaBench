
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_ng {int sg_data; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int frombuf ;


 int NGLOG (char*) ;
 int NGLOGX (char*,char*,int ,int) ;
 int NGSA_OVERHEAD ;
 int NG_HOOKSIZ ;
 int _NgDebugBytes (int *,int) ;
 int _gNgDebugLevel ;
 int errno ;
 int recvfrom (int,int *,size_t,int ,struct sockaddr*,int*) ;
 int strlcpy (char*,int ,int) ;

int
NgRecvData(int ds, u_char * buf, size_t len, char *hook)
{
 u_char frombuf[NG_HOOKSIZ + NGSA_OVERHEAD];
 struct sockaddr_ng *const from = (struct sockaddr_ng *) frombuf;
 socklen_t fromlen = sizeof(frombuf);
 int rtn, errnosv;


 rtn = recvfrom(ds, buf, len, 0, (struct sockaddr *) from, &fromlen);
 if (rtn < 0) {
  errnosv = errno;
  if (_gNgDebugLevel >= 1)
   NGLOG("recvfrom");
  errno = errnosv;
  return (-1);
 }


 if (hook != ((void*)0))
  strlcpy(hook, from->sg_data, NG_HOOKSIZ);


 if (_gNgDebugLevel >= 2) {
  NGLOGX("READ %s from hook \"%s\" (%d bytes)",
         rtn ? "PACKET" : "EOF", from->sg_data, rtn);
  if (_gNgDebugLevel >= 3)
   _NgDebugBytes(buf, rtn);
 }


 return (rtn);
}
