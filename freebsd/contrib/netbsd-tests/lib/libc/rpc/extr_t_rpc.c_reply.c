
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; } ;
struct netconfig {int dummy; } ;
struct netbuf {struct sockaddr* buf; } ;
typedef int host ;
typedef int caddr_t ;


 int NI_MAXHOST ;
 int gai_strerror (int) ;
 int getnameinfo (struct sockaddr*,int ,char*,int,int *,int ,int ) ;
 int printf (char*,char*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
reply(caddr_t replyp, struct netbuf * raddrp, struct netconfig * nconf)
{
 char host[NI_MAXHOST];
 struct sockaddr *sock = raddrp->buf;
 int error;


 error = getnameinfo(sock, sock->sa_len, host, sizeof(host), ((void*)0), 0, 0);
 if (error)
  warnx("Cannot resolve address (%s)", gai_strerror(error));
 else
  printf("response from: %s\n", host);
 return 0;
}
