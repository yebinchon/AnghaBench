
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char* release; } ;
struct pcap_linux {int timeout; scalar_t__ tp_version; int poll_timeout; } ;


 scalar_t__ TPACKET_V3 ;
 int strtol (char*,char**,int) ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static void
set_poll_timeout(struct pcap_linux *handlep)
{
 if (handlep->timeout == 0) {
   handlep->poll_timeout = -1;
 } else if (handlep->timeout > 0) {
   handlep->poll_timeout = handlep->timeout;
 } else {





  handlep->poll_timeout = 0;
 }
}
