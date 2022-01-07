
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_status {int running; } ;


 int DIOCGETSTATUS ;
 int O_RDWR ;
 int PF_LOG ;
 int PF_LOG_ALL ;
 int dev ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int ioctl (int,int ,struct pf_status*) ;
 int open (char*,int ) ;
 char const* qname ;
 int rule_log ;
 char const* tagname ;

void
init_filter(const char *opt_qname, const char *opt_tagname, int opt_verbose)
{
 struct pf_status status;

 qname = opt_qname;
 tagname = opt_tagname;

 if (opt_verbose == 1)
  rule_log = PF_LOG;
 else if (opt_verbose == 2)
  rule_log = PF_LOG_ALL;

 dev = open("/dev/pf", O_RDWR);
 if (dev == -1)
  err(1, "open /dev/pf");
 if (ioctl(dev, DIOCGETSTATUS, &status) == -1)
  err(1, "DIOCGETSTATUS");
 if (!status.running)
  errx(1, "pf is disabled");
}
