
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ifrn_name; } ;
struct iwreq {TYPE_1__ ifr_ifrn; } ;
struct TYPE_8__ {int device; } ;
struct TYPE_9__ {int errbuf; TYPE_2__ opt; } ;
typedef TYPE_3__ pcap_t ;


 scalar_t__ ENODEV ;
 int PATH_MAX ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int PF_PACKET ;
 int SIOCGIWMODE ;
 int SOCK_RAW ;
 int close (int) ;
 scalar_t__ errno ;
 int get_mac80211_phydev (TYPE_3__*,int ,char*,int ) ;
 int ioctl (int,int ,struct iwreq*) ;
 scalar_t__ is_bonding_device (int,int ) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*) ;
 int pcap_protocol (TYPE_3__*) ;
 int socket (int ,int ,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
pcap_can_set_rfmon_linux(pcap_t *handle)
{
 if (strcmp(handle->opt.device, "any") == 0) {



  return 0;
 }
 return 0;
}
