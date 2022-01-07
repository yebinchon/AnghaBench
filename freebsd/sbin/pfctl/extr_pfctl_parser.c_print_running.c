
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_status {scalar_t__ running; } ;


 int printf (char*,char*) ;

void
print_running(struct pf_status *status)
{
 printf("%s\n", status->running ? "Enabled" : "Disabled");
}
