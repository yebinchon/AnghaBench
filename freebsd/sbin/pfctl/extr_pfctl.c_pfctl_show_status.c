
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_status {int dummy; } ;


 int DIOCGETSTATUS ;
 int PF_OPT_SHOWALL ;
 scalar_t__ ioctl (int,int ,struct pf_status*) ;
 int pfctl_print_title (char*) ;
 int print_status (struct pf_status*,int) ;
 int warn (char*) ;

int
pfctl_show_status(int dev, int opts)
{
 struct pf_status status;

 if (ioctl(dev, DIOCGETSTATUS, &status)) {
  warn("DIOCGETSTATUS");
  return (-1);
 }
 if (opts & PF_OPT_SHOWALL)
  pfctl_print_title("INFO:");
 print_status(&status, opts);
 return (0);
}
