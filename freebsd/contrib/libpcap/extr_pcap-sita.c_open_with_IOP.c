
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* ip; int fd; int find_fd; scalar_t__ first_time; TYPE_4__* serv_addr; } ;
typedef TYPE_2__ unit_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_7__ {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;


 int AF_INET ;
 int IOP_SNIFFER_PORT ;
 int LIVE ;
 int SOCK_STREAM ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int htons (int ) ;
 int inet_addr (char*) ;
 TYPE_4__* malloc (int) ;
 int memset (char*,int ,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static int open_with_IOP(unit_t *u, int flag) {
 int sockfd;
 char *ip;

 if (u->serv_addr == ((void*)0)) {
  u->serv_addr = malloc(sizeof(struct sockaddr_in));


  if (u->serv_addr == ((void*)0)) {
   fprintf(stderr, "malloc() request for u->serv_addr failed, value of errno is: %d\n", errno);
   return 0;
  }

 }
 ip = u->ip;

 memset((char *)u->serv_addr, 0, sizeof(struct sockaddr_in));
 u->serv_addr->sin_family = AF_INET;
 u->serv_addr->sin_addr.s_addr = inet_addr(ip);
 u->serv_addr->sin_port = htons(IOP_SNIFFER_PORT);

 if ((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
  fprintf(stderr, "pcap can't open a socket for connecting to IOP at %s\n", ip);
  return 0;
 }
 if (connect(sockfd, (struct sockaddr *)u->serv_addr, sizeof(struct sockaddr_in)) < 0) {
  fprintf(stderr, "pcap can't connect to IOP at %s\n", ip);
  return 0;
 }
 if (flag == LIVE) u->fd = sockfd;
 else u->find_fd = sockfd;
 u->first_time = 0;
 return sockfd;
}
