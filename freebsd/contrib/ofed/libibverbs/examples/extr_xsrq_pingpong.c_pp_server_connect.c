
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; int ai_flags; } ;
struct TYPE_2__ {int num_clients; } ;


 int AF_INET ;
 int AI_PASSIVE ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int accept (int,int *,int *) ;
 scalar_t__ asprintf (char**,char*,int) ;
 int bind (int,int ,int ) ;
 int close (int) ;
 scalar_t__ connect_qps (int) ;
 TYPE_1__ ctx ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int freeaddrinfo_null (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (int *,char*,struct addrinfo*,struct addrinfo**) ;
 int listen (int,int) ;
 scalar_t__ recv_remote_dest (int,int) ;
 scalar_t__ send_local_dest (int,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static int pp_server_connect(int port)
{
 struct addrinfo *res, *t;
 char *service;
 int ret, i, n;
 int sockfd = -1, connfd;
 struct addrinfo hints = {
  .ai_flags = AI_PASSIVE,
  .ai_family = AF_INET,
  .ai_socktype = SOCK_STREAM
 };

 if (asprintf(&service, "%d", port) < 0)
  return 1;

 ret = getaddrinfo(((void*)0), service, &hints, &res);
 if (ret < 0) {
  fprintf(stderr, "%s for port %d\n", gai_strerror(ret), port);
  free(service);
  return 1;
 }

 for (t = res; t; t = t->ai_next) {
  sockfd = socket(t->ai_family, t->ai_socktype, t->ai_protocol);
  if (sockfd >= 0) {
   n = 1;
   setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &n, sizeof n);
   if (!bind(sockfd, t->ai_addr, t->ai_addrlen))
    break;
   close(sockfd);
   sockfd = -1;
  }
 }

 freeaddrinfo_null(res);
 free(service);

 if (sockfd < 0) {
  fprintf(stderr, "Couldn't listen to port %d\n", port);
  return 1;
 }

 listen(sockfd, ctx.num_clients);

 for (i = 0; i < ctx.num_clients; i++) {
  connfd = accept(sockfd, ((void*)0), ((void*)0));
  if (connfd < 0) {
   fprintf(stderr, "accept() failed for client %d\n", i);
   return 1;
  }

  if (recv_remote_dest(connfd, i))
   return 1;

  if (send_local_dest(connfd, i))
   return 1;

  if (connect_qps(i))
   return 1;
 }

 close(sockfd);
 return 0;
}
