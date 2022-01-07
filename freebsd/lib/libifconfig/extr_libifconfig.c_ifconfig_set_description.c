
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int length; int * buffer; } ;
struct ifreq {TYPE_2__ ifr_buffer; int ifr_name; } ;
typedef int ifr ;
struct TYPE_7__ {int errcode; int errtype; } ;
struct TYPE_9__ {TYPE_1__ error; } ;
typedef TYPE_3__ ifconfig_handle_t ;


 int AF_LOCAL ;
 int ENOMEM ;
 int OTHER ;
 int SIOCSIFDESCR ;
 int free (int *) ;
 scalar_t__ ifconfig_ioctlwrap (TYPE_3__*,int ,int ,struct ifreq*) ;
 int ifconfig_unset_description (TYPE_3__*,char const*) ;
 int memset (struct ifreq*,int ,int) ;
 int * strdup (char const*) ;
 int strlcpy (int ,char const*,int) ;
 int strlen (char const*) ;

int
ifconfig_set_description(ifconfig_handle_t *h, const char *name,
    const char *newdescription)
{
 struct ifreq ifr;
 int desclen;

 memset(&ifr, 0, sizeof(ifr));
 desclen = strlen(newdescription);





 if (desclen == 0) {
  return (ifconfig_unset_description(h, name));
 }

 (void)strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 ifr.ifr_buffer.length = desclen + 1;
 ifr.ifr_buffer.buffer = strdup(newdescription);

 if (ifr.ifr_buffer.buffer == ((void*)0)) {
  h->error.errtype = OTHER;
  h->error.errcode = ENOMEM;
  return (-1);
 }

 if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCSIFDESCR, &ifr) != 0) {
  free(ifr.ifr_buffer.buffer);
  return (-1);
 }

 free(ifr.ifr_buffer.buffer);
 return (0);
}
