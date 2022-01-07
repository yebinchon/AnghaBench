
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int usage (int ) ;

void
help(void)
{
 usage(0);
 fprintf(stderr, "\tCommand Summary:\n	\t-4		Use IPv4\n	\t-6		Use IPv6\n	\t-D		Enable the debug socket option\n	\t-d		Detach from stdin\n	\t-F		Pass socket fd\n	\t-h		This help text\n	\t-I length	TCP receive buffer length\n	\t-i secs\t	Delay interval for lines sent, ports scanned\n	\t-k		Keep inbound sockets open for multiple connects\n	\t-l		Listen mode, for inbound connects\n	\t-N		Shutdown the network socket after EOF on stdin\n	\t-n		Suppress name/port resolutions\n	\t-O length	TCP send buffer length\n	\t-P proxyuser\tUsername for proxy authentication\n	\t-p port\t	Specify local port for remote connects\n	\t-r		Randomize remote ports\n	\t-S		Enable the TCP MD5 signature option\n	\t-s addr\t	Local source address\n	\t-T toskeyword\tSet IP Type of Service\n	\t-t		Answer TELNET negotiation\n	\t-U		Use UNIX domain socket\n	\t-u		UDP mode\n	\t-V rtable	Specify alternate routing table\n	\t-v		Verbose\n	\t-w secs\t	Timeout for connects and final net reads\n	\t-X proto	Proxy protocol: \"4\", \"5\" (SOCKS) or \"connect\"\n	\t-x addr[:port]\tSpecify proxy address and port\n	\t-z		Zero-I/O mode [used for scanning]\n	Port numbers can be individual or ranges: lo-hi [inclusive]\n");
 exit(1);
}
