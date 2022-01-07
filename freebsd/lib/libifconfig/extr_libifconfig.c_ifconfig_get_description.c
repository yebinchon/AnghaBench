
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* buffer; size_t length; } ;
struct ifreq {TYPE_1__ ifr_buffer; int ifr_name; } ;
typedef int ifr ;
struct TYPE_7__ {void* errcode; void* errtype; } ;
struct TYPE_8__ {TYPE_2__ error; } ;
typedef TYPE_3__ ifconfig_handle_t ;


 int AF_LOCAL ;
 void* ENOMEM ;
 void* OTHER ;
 int SIOCGIFDESCR ;
 int free (char*) ;
 scalar_t__ ifconfig_ioctlwrap (TYPE_3__*,int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 char* reallocf (char*,size_t) ;
 char* strdup (char*) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ strlen (char*) ;

int
ifconfig_get_description(ifconfig_handle_t *h, const char *name,
    char **description)
{
 struct ifreq ifr;
 char *descr;
 size_t descrlen;

 descr = ((void*)0);
 descrlen = 64;
 memset(&ifr, 0, sizeof(ifr));
 (void)strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));

 for (;;) {
  if ((descr = reallocf(descr, descrlen)) == ((void*)0)) {
   h->error.errtype = OTHER;
   h->error.errcode = ENOMEM;
   return (-1);
  }

  ifr.ifr_buffer.buffer = descr;
  ifr.ifr_buffer.length = descrlen;
  if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCGIFDESCR, &ifr) != 0) {
   free(descr);
   return (-1);
  }

  if (ifr.ifr_buffer.buffer == descr) {
   if (strlen(descr) > 0) {
    *description = strdup(descr);
    free(descr);

    if (description == ((void*)0)) {
     h->error.errtype = OTHER;
     h->error.errcode = ENOMEM;
     return (-1);
    }

    return (0);
   }
  } else if (ifr.ifr_buffer.length > descrlen) {
   descrlen = ifr.ifr_buffer.length;
   continue;
  }
  break;
 }
 free(descr);
 h->error.errtype = OTHER;
 h->error.errcode = 0;
 return (-1);
}
