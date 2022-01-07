
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pcap_bpf {int must_do_on_close; int * device; int zbufsize; int * zbuf2; int * zbuf1; scalar_t__ zerocopy; } ;
struct ifreq {int ifm_current; int ifr_media; int ifr_name; int ifm_name; } ;
struct ifmediareq {int ifm_current; int ifr_media; int ifr_name; int ifm_name; } ;
typedef int req ;
struct TYPE_5__ {int * buffer; struct pcap_bpf* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int ifr ;


 int AF_INET ;
 int AF_LOCAL ;
 int IFM_IEEE80211_MONITOR ;
 int * MAP_FAILED ;
 int MUST_CLEAR_RFMON ;
 int MUST_DESTROY_USBUS ;
 int SIOCGIFMEDIA ;
 int SIOCIFDESTROY ;
 int SIOCSIFMEDIA ;
 int SOCK_DGRAM ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int free (int *) ;
 scalar_t__ if_nametoindex (int *) ;
 int ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int munmap (int *,int ) ;
 int pcap_cleanup_live_common (TYPE_1__*) ;
 int pcap_remove_from_pcaps_to_close (TYPE_1__*) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 char* strerror (int ) ;
 int strlcpy (int ,int *,int) ;
 int strncpy (int ,int *,int) ;

__attribute__((used)) static void
pcap_cleanup_bpf(pcap_t *p)
{
 struct pcap_bpf *pb = p->priv;






 if (pb->must_do_on_close != 0) {
  pcap_remove_from_pcaps_to_close(p);
  pb->must_do_on_close = 0;
 }
 if (pb->device != ((void*)0)) {
  free(pb->device);
  pb->device = ((void*)0);
 }
 pcap_cleanup_live_common(p);
}
