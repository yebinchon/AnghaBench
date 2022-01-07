
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;


 int enter_rfmon_mode_mac80211 (int *,int,char const*) ;
 int enter_rfmon_mode_wext (int *,int,char const*) ;

__attribute__((used)) static int
enter_rfmon_mode(pcap_t *handle, int sock_fd, const char *device)
{
 return 0;
}
