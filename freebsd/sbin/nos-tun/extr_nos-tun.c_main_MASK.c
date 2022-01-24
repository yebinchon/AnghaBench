#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wherefrom ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct ip {int ip_hl; TYPE_1__ ip_src; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_PID ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC4 (char*,struct sockaddr_in*) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int,char**,char*) ; 
 int net ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int FUNC14 (int,char*,int) ; 
 int FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int)) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int tun ; 
 scalar_t__ FUNC20 (char*,struct sockaddr*,char*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int,char*,int) ; 

int FUNC23 (int argc, char **argv)
{
  int  c, len, ipoff;

  char *dev_name = NULL;
  char *point_to = NULL;
  char *to_point = NULL;
  char *target;
  char *source = NULL;
  char *protocol = NULL;
  int protnum;

  struct sockaddr t_laddr;          /* Source address of tunnel */
  struct sockaddr whereto;          /* Destination of tunnel */
  struct sockaddr wherefrom;        /* Source of tunnel */
  struct sockaddr_in *to;

  char buf[0x2000];                 /* Packets buffer */
  struct ip *ip = (struct ip *)buf;

  fd_set rfds;                      /* File descriptors for select() */
  int nfds;                         /* Return from select() */
  int lastfd;                       /* highest fd we care about */


  while ((c = FUNC12(argc, argv, "d:s:t:p:")) != -1) {
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

  if ((argc != 1 && argc != 2) || (dev_name == NULL) ||
      (point_to == NULL) || (to_point == NULL)) {
    FUNC21();
  }

  if(protocol == NULL)
      protnum = 94;
  else
      protnum = FUNC5(protocol);

  if (argc == 1) {
      target = *argv;
  } else {
      source = *argv++; target = *argv;
  }

  /* Establish logging through 'syslog' */
  FUNC13("nos-tun", LOG_PID, LOG_DAEMON);

  if(FUNC4(point_to, (struct sockaddr_in *)&t_laddr)) {
    FUNC8();
    FUNC11(2);
  }

  if(FUNC20(dev_name, &t_laddr, to_point)) {
    FUNC8();
    FUNC11(3);
  }

  to = (struct sockaddr_in *)&whereto;
  if(FUNC4(target, to))
    FUNC3(4);

  if ((net = FUNC18(AF_INET, SOCK_RAW, protnum)) < 0) {
    FUNC19(LOG_ERR,"can't open socket - %m");
    FUNC3(5);
  }

  if (source) { 
	if (FUNC4(source, (struct sockaddr_in *)&wherefrom))
	  FUNC3(9);
    if (FUNC6(net, &wherefrom, sizeof(wherefrom)) < 0) {
	  FUNC19(LOG_ERR, "can't bind source address - %m");
	  FUNC3(10);
	}
  }

  if (FUNC9(net,&whereto,sizeof(struct sockaddr_in)) < 0 ) {
    FUNC19(LOG_ERR,"can't connect to target - %m");
    FUNC7(net);
    FUNC3(6);
  }

  /*  Demonize it */
  FUNC10(0,0);

  /* Install signal handlers */
  (void)FUNC17(SIGHUP,Finish);
  (void)FUNC17(SIGINT,Finish);
  (void)FUNC17(SIGTERM,Finish);

  if (tun > net)
	lastfd = tun;
  else
	lastfd = net;

  for (;;) {
    /* Set file descriptors for select() */
    FUNC2(&rfds);
    FUNC1(tun,&rfds); FUNC1(net,&rfds);

    nfds = FUNC15(lastfd+1,&rfds,NULL,NULL,NULL);
    if(nfds < 0) {
      FUNC19(LOG_ERR,"interrupted select");
      FUNC7(net);
      FUNC3(7);
    }
    if(nfds == 0) {         /* Impossible ? */
      FUNC19(LOG_ERR,"timeout in select");
      FUNC7(net);
      FUNC3(8);
    }


    if(FUNC0(net,&rfds)) {
      /* Read from socket ... */
      len = FUNC14(net, buf, sizeof(buf));
      /* Check if this is "our" packet */
      if((ip->ip_src).s_addr == (to->sin_addr).s_addr) {
	/* ... skip encapsulation headers ... */
	ipoff = (ip->ip_hl << 2);
	/* ... and write to tun-device */
	FUNC22(tun,buf+ipoff,len-ipoff);
      }
    }

    if(FUNC0(tun,&rfds)) {
      /* Read from tun ... */
      len = FUNC14(tun, buf, sizeof(buf));
      /* ... and send to network */
      if(FUNC16(net, buf, len,0) <= 0) {
	FUNC19(LOG_ERR,"can't send - %m");
      }
    }
  }
}