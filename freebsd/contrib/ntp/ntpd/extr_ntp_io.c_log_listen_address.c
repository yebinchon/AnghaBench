
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin; int name; int ifnum; scalar_t__ ignore_packets; } ;
typedef TYPE_1__ endpt ;


 int LOG_INFO ;
 int msyslog (int ,char*,char*,int ,int ,int ) ;
 int sptoa (int *) ;

__attribute__((used)) static void
log_listen_address(
 endpt * ep
 )
{
 msyslog(LOG_INFO, "%s on %d %s %s",
  (ep->ignore_packets)
      ? "Listen and drop"
      : "Listen normally",
  ep->ifnum,
  ep->name,
  sptoa(&ep->sin));
}
