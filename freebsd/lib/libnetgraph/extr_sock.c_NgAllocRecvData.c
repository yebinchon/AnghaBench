
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int socklen_t ;
typedef int len ;


 int NgRecvData (int,int *,int,char*) ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int free (int *) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int * malloc (int) ;

int
NgAllocRecvData(int ds, u_char **buf, char *hook)
{
 int len;
 socklen_t optlen;

 optlen = sizeof(len);
 if (getsockopt(ds, SOL_SOCKET, SO_RCVBUF, &len, &optlen) == -1 ||
     (*buf = malloc(len)) == ((void*)0))
  return (-1);
 if ((len = NgRecvData(ds, *buf, len, hook)) < 0)
  free(*buf);
 return (len);
}
