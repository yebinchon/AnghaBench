
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifconfig_lagg_status {int dummy; } ;


 int free (struct ifconfig_lagg_status*) ;

void
ifconfig_lagg_free_lagg_status(struct ifconfig_lagg_status *laggstat)
{
 free(laggstat);
}
