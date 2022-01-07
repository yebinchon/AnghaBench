
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ifmediareq {int ifm_count; int * ifm_ulist; int ifm_name; } ;
struct _ifconfig_media_status {struct ifmediareq ifmr; int * medialist; } ;
struct TYPE_5__ {void* errcode; void* errtype; } ;
struct TYPE_6__ {TYPE_1__ error; } ;
typedef TYPE_2__ ifconfig_handle_t ;


 int AF_LOCAL ;
 void* ENOMEM ;
 void* OK ;
 void* OTHER ;
 unsigned long SIOCGIFMEDIA ;
 unsigned long SIOCGIFXMEDIA ;
 struct _ifconfig_media_status* calloc (int,int) ;
 int free (struct _ifconfig_media_status*) ;
 scalar_t__ ifconfig_ioctlwrap (TYPE_2__*,int ,unsigned long,struct ifmediareq*) ;
 int memset (struct _ifconfig_media_status*,int ,int) ;
 struct _ifconfig_media_status* realloc (struct _ifconfig_media_status*,int) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_media_get_mediareq(ifconfig_handle_t *h, const char *name,
    struct ifmediareq **ifmr)
{
 struct _ifconfig_media_status *ms, *ms2;
 unsigned long cmd = SIOCGIFXMEDIA;

 *ifmr = ((void*)0);
 ms = calloc(1, sizeof(*ms));
 if (ms == ((void*)0)) {
  h->error.errtype = OTHER;
  h->error.errcode = ENOMEM;
  return (-1);
 }
 (void)memset(ms, 0, sizeof(*ms));
 (void)strlcpy(ms->ifmr.ifm_name, name, sizeof(ms->ifmr.ifm_name));




 if (ifconfig_ioctlwrap(h, AF_LOCAL, cmd, &ms->ifmr) < 0) {
  cmd = SIOCGIFMEDIA;
  if (ifconfig_ioctlwrap(h, AF_LOCAL, cmd, &ms->ifmr) < 0) {

   h->error.errtype = OK;
   free(ms);
   return (-1);
  }
 }
 if (ms->ifmr.ifm_count == 0) {
  *ifmr = &ms->ifmr;
  return (0);
 }

 ms2 = realloc(ms, sizeof(*ms) + sizeof(int) * ms->ifmr.ifm_count);
 if (ms2 == ((void*)0)) {
  h->error.errtype = OTHER;
  h->error.errcode = ENOMEM;
  free(ms);
  return (-1);
 }
 ms2->ifmr.ifm_ulist = &ms2->medialist[0];

 if (ifconfig_ioctlwrap(h, AF_LOCAL, cmd, &ms2->ifmr) < 0) {
  free(ms2);
  return (-1);
 }

 *ifmr = &ms2->ifmr;
 return (0);
}
