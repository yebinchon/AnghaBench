
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibdiag_opt {char* member_0; char member_1; int member_2; char* member_3; char* member_4; } ;
typedef int hostname ;


 scalar_t__ DEFAULT_ND_FORMAT ;
 int LOG_DAEMON ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_PERROR ;
 int LOG_PID ;
 int O_RDONLY ;
 int SYS_HOSTNAME ;
 int close (int) ;
 int closelog () ;
 scalar_t__ daemon (int ,int ) ;
 int errno ;
 int exit (int ) ;
 int foreground ;
 scalar_t__ ibd_nd_format ;
 int ibdiag_process_opts (int,char**,int *,char*,struct ibdiag_opt const*,int ,char*,int *) ;
 int monitor () ;
 int open (int ,int ) ;
 int openlog (char*,int,int ) ;
 int process_opts ;
 scalar_t__ read_hostname (int,char*,int) ;
 int remove_pidfile () ;
 int set_rdma_node_desc (char const*,int) ;
 int setup_udev () ;
 int syslog (int ,char*,...) ;
 int write_pidfile () ;

int main(int argc, char *argv[])
{
 int fd;
 char hostname[128];

 openlog("rdma-ndd", LOG_PID | LOG_PERROR, LOG_DAEMON);

 const struct ibdiag_opt opts[] = {
  {"retry_timer", 't', 1, "<retry_timer>",
   "Length of time to sleep when system errors occur "
   "when attempting to poll and or read the hostname "
   "from the system.\n"},
  {"retry_count", 'r', 1, "<retry_count>",
   "Number of times to attempt to retry setting "
   "of the node description on failure\n"},
  {"foreground", 'f', 0, ((void*)0), "run in the foreground instead of as a daemon\n"},
  {"pidfile", 0, 1, "<pidfile>", "specify a pid file (daemon mode only)\n"},
  {0}
 };

 ibdiag_process_opts(argc, argv, ((void*)0), "CPDLGtsKyevd", opts,
       process_opts, "", ((void*)0));

 if (!ibd_nd_format)
  ibd_nd_format = DEFAULT_ND_FORMAT;

 if (!foreground) {
  closelog();
  openlog("rdma-ndd", LOG_PID, LOG_DAEMON);
  if (daemon(0, 0) != 0) {
   syslog(LOG_ERR, "Failed to daemonize\n");
   exit(errno);
  }
  write_pidfile();
 }

 setup_udev();

 syslog(LOG_INFO, "Node Descriptor format (%s)\n", ibd_nd_format);

 fd = open(SYS_HOSTNAME, O_RDONLY);
 if (read_hostname(fd, hostname, sizeof(hostname)) != 0)
  hostname[0] = '\0';
 set_rdma_node_desc((const char *)hostname, 1);
 close(fd);

 monitor();

 remove_pidfile();

 return 0;
}
