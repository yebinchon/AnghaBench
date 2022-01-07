
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ifru_data; } ;
struct ifreq {TYPE_1__ ifr_ifru; int ifr_name; } ;
typedef scalar_t__ mac_t ;
typedef int ifr ;


 int SIOCGIFMAC ;
 int free (char*) ;
 int ioctl (int,int ,struct ifreq*) ;
 int mac_free (scalar_t__) ;
 int mac_prepare_ifnet_label (scalar_t__*) ;
 int mac_to_text (scalar_t__,char**) ;
 int memset (struct ifreq*,int ,int) ;
 int name ;
 int printf (char*,char*) ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
maclabel_status(int s)
{
 struct ifreq ifr;
 mac_t label;
 char *label_text;

 memset(&ifr, 0, sizeof(ifr));
 strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));

 if (mac_prepare_ifnet_label(&label) == -1)
  return;
 ifr.ifr_ifru.ifru_data = (void *)label;
 if (ioctl(s, SIOCGIFMAC, &ifr) == -1)
  goto mac_free;


 if (mac_to_text(label, &label_text) == -1)
  goto mac_free;

 if (strlen(label_text) != 0)
  printf("\tmaclabel %s\n", label_text);
 free(label_text);

mac_free:
 mac_free(label);
}
