
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_mesg {int dummy; } ;
typedef int socklen_t ;
typedef int len ;


 int NgRecvAsciiMsg (int,struct ng_mesg*,int,char*) ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int free (struct ng_mesg*) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 struct ng_mesg* malloc (int) ;

int
NgAllocRecvAsciiMsg(int cs, struct ng_mesg **reply, char *path)
{
 int len;
 socklen_t optlen;

 optlen = sizeof(len);
 if (getsockopt(cs, SOL_SOCKET, SO_RCVBUF, &len, &optlen) == -1 ||
     (*reply = malloc(len)) == ((void*)0))
  return (-1);
 if ((len = NgRecvAsciiMsg(cs, *reply, len, path)) < 0)
  free(*reply);
 return (len);
}
