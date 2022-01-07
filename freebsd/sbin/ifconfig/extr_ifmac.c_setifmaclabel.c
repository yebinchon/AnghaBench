
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ifru_data; } ;
struct ifreq {TYPE_1__ ifr_ifru; int ifr_name; } ;
struct afswtch {int dummy; } ;
typedef scalar_t__ mac_t ;
typedef int ifr ;


 int SIOCSIFMAC ;
 int ioctl (int,int ,struct ifreq*) ;
 int mac_free (scalar_t__) ;
 int mac_from_text (scalar_t__*,char const*) ;
 int memset (struct ifreq*,int ,int) ;
 int name ;
 int perror (char const*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
setifmaclabel(const char *val, int d, int s, const struct afswtch *rafp)
{
 struct ifreq ifr;
 mac_t label;
 int error;

 if (mac_from_text(&label, val) == -1) {
  perror(val);
  return;
 }

 memset(&ifr, 0, sizeof(ifr));
 strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 ifr.ifr_ifru.ifru_data = (void *)label;

 error = ioctl(s, SIOCSIFMAC, &ifr);
 mac_free(label);
 if (error == -1)
  perror("setifmac");
}
