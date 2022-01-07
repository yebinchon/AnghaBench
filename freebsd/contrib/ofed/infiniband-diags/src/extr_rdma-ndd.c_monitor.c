
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; scalar_t__ revents; scalar_t__ events; } ;
typedef int hostname ;


 int EIO ;
 int LOG_ERR ;
 int O_RDONLY ;
 scalar_t__ POLLIN ;
 char* SYS_HOSTNAME ;
 int close (int) ;
 int failure_retry_rate ;
 int get_udev_fd () ;
 int open (char*,int ) ;
 int poll (struct pollfd*,int,int) ;
 int process_udev_event (int,char*) ;
 scalar_t__ read_hostname (int,char*,int) ;
 int set_rdma_node_desc (char const*,int ) ;
 int sleep (int ) ;
 int syslog (int ,char*,char*,...) ;

__attribute__((used)) static void monitor(void)
{
 char hostname[128];
 int hn_fd;
 int rc;
 struct pollfd fds[2];
 int numfds = 1;
 int ud_fd;

 ud_fd = get_udev_fd();
 if (ud_fd >= 0)
  numfds = 2;

 while (1) {
  hn_fd = open(SYS_HOSTNAME, O_RDONLY);
  if (hn_fd < 0) {
   syslog(LOG_ERR,
    "Open %s Failed: retry in %d seconds\n",
    SYS_HOSTNAME, failure_retry_rate);
   sleep(failure_retry_rate);
   continue;
  }

  fds[0].fd = hn_fd;
  fds[0].events = 0;
  fds[0].revents = 0;

  fds[1].fd = ud_fd;
  fds[1].events = POLLIN;
  fds[1].revents = 0;

  rc = poll(fds, numfds, -1);

  if (rc > 0) {
   if (read_hostname(hn_fd, hostname, sizeof(hostname)) != 0)
    hostname[0] = '\0';

   if (fds[0].revents != 0)
    syslog(LOG_ERR, "Hostname change: %s\n", hostname);

   if (fds[1].revents != 0)
    process_udev_event(ud_fd, hostname);

   rc = set_rdma_node_desc((const char *)hostname, 0);
  } else {
   syslog(LOG_ERR, "Poll %s Failed\n", SYS_HOSTNAME);
   rc = -EIO;
  }

  close(hn_fd);

  if (rc)
   sleep(failure_retry_rate);
 }
}
