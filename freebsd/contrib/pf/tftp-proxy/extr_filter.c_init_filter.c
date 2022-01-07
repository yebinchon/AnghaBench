
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_status {int running; } ;


 int DIOCGETSTATUS ;
 int LOG_ERR ;
 int O_RDWR ;
 int PF_LOG ;
 int PF_LOG_ALL ;
 int dev ;
 int exit (int) ;
 int ioctl (int,int ,struct pf_status*) ;
 int open (char*,int ) ;
 char* qname ;
 int rule_log ;
 int syslog (int ,char*) ;

void
init_filter(char *opt_qname, int opt_verbose)
{
 struct pf_status status;

 qname = opt_qname;

 if (opt_verbose == 1)
  rule_log = PF_LOG;
 else if (opt_verbose == 2)
  rule_log = PF_LOG_ALL;

 dev = open("/dev/pf", O_RDWR);
 if (dev == -1) {
  syslog(LOG_ERR, "can't open /dev/pf");
  exit(1);
 }
 if (ioctl(dev, DIOCGETSTATUS, &status) == -1) {
  syslog(LOG_ERR, "DIOCGETSTATUS");
  exit(1);
 }
 if (!status.running) {
  syslog(LOG_ERR, "pf is disabled");
  exit(1);
 }
}
