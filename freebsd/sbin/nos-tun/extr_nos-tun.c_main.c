
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wherefrom ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct ip {int ip_hl; TYPE_1__ ip_src; } ;
typedef int fd_set ;
typedef int buf ;


 int AF_INET ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int Finish (int) ;
 int LOG_DAEMON ;
 int LOG_ERR ;
 int LOG_PID ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SOCK_RAW ;
 scalar_t__ Set_address (char*,struct sockaddr_in*) ;
 int atoi (char*) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int closelog () ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int daemon (int ,int ) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int net ;
 int openlog (char*,int ,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int read (int,char*,int) ;
 int select (int,int *,int *,int *,int *) ;
 scalar_t__ send (int,char*,int,int ) ;
 int signal (int ,int (*) (int)) ;
 int socket (int ,int ,int) ;
 int syslog (int ,char*) ;
 int tun ;
 scalar_t__ tun_open (char*,struct sockaddr*,char*) ;
 int usage () ;
 int write (int,char*,int) ;

int main (int argc, char **argv)
{
  int c, len, ipoff;

  char *dev_name = ((void*)0);
  char *point_to = ((void*)0);
  char *to_point = ((void*)0);
  char *target;
  char *source = ((void*)0);
  char *protocol = ((void*)0);
  int protnum;

  struct sockaddr t_laddr;
  struct sockaddr whereto;
  struct sockaddr wherefrom;
  struct sockaddr_in *to;

  char buf[0x2000];
  struct ip *ip = (struct ip *)buf;

  fd_set rfds;
  int nfds;
  int lastfd;


  while ((c = getopt(argc, argv, "d:s:t:p:")) != -1) {
    switch (c) {
    case 'd':
      to_point = optarg;
      break;
    case 's':
      point_to = optarg;
      break;
    case 't':
      dev_name = optarg;
      break;
    case 'p':
      protocol = optarg;
      break;
    }
  }
  argc -= optind;
  argv += optind;

  if ((argc != 1 && argc != 2) || (dev_name == ((void*)0)) ||
      (point_to == ((void*)0)) || (to_point == ((void*)0))) {
    usage();
  }

  if(protocol == ((void*)0))
      protnum = 94;
  else
      protnum = atoi(protocol);

  if (argc == 1) {
      target = *argv;
  } else {
      source = *argv++; target = *argv;
  }


  openlog("nos-tun", LOG_PID, LOG_DAEMON);

  if(Set_address(point_to, (struct sockaddr_in *)&t_laddr)) {
    closelog();
    exit(2);
  }

  if(tun_open(dev_name, &t_laddr, to_point)) {
    closelog();
    exit(3);
  }

  to = (struct sockaddr_in *)&whereto;
  if(Set_address(target, to))
    Finish(4);

  if ((net = socket(AF_INET, SOCK_RAW, protnum)) < 0) {
    syslog(LOG_ERR,"can't open socket - %m");
    Finish(5);
  }

  if (source) {
 if (Set_address(source, (struct sockaddr_in *)&wherefrom))
   Finish(9);
    if (bind(net, &wherefrom, sizeof(wherefrom)) < 0) {
   syslog(LOG_ERR, "can't bind source address - %m");
   Finish(10);
 }
  }

  if (connect(net,&whereto,sizeof(struct sockaddr_in)) < 0 ) {
    syslog(LOG_ERR,"can't connect to target - %m");
    close(net);
    Finish(6);
  }


  daemon(0,0);


  (void)signal(SIGHUP,Finish);
  (void)signal(SIGINT,Finish);
  (void)signal(SIGTERM,Finish);

  if (tun > net)
 lastfd = tun;
  else
 lastfd = net;

  for (;;) {

    FD_ZERO(&rfds);
    FD_SET(tun,&rfds); FD_SET(net,&rfds);

    nfds = select(lastfd+1,&rfds,((void*)0),((void*)0),((void*)0));
    if(nfds < 0) {
      syslog(LOG_ERR,"interrupted select");
      close(net);
      Finish(7);
    }
    if(nfds == 0) {
      syslog(LOG_ERR,"timeout in select");
      close(net);
      Finish(8);
    }


    if(FD_ISSET(net,&rfds)) {

      len = read(net, buf, sizeof(buf));

      if((ip->ip_src).s_addr == (to->sin_addr).s_addr) {

 ipoff = (ip->ip_hl << 2);

 write(tun,buf+ipoff,len-ipoff);
      }
    }

    if(FD_ISSET(tun,&rfds)) {

      len = read(tun, buf, sizeof(buf));

      if(send(net, buf, len,0) <= 0) {
 syslog(LOG_ERR,"can't send - %m");
      }
    }
  }
}
