
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_status {int running; } ;


 int DIOCGETSTATUS ;
 scalar_t__ ioctl (int,int ,struct pf_status*) ;
 int print_running (struct pf_status*) ;
 int warn (char*) ;

int
pfctl_show_running(int dev)
{
 struct pf_status status;

 if (ioctl(dev, DIOCGETSTATUS, &status)) {
  warn("DIOCGETSTATUS");
  return (-1);
 }

 print_running(&status);
 return (!status.running);
}
