
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct ipfw_nptv6_stats {int dummy; } ;
struct TYPE_4__ {int opheader; int ntlv; } ;
typedef TYPE_1__ ipfw_obj_header ;
typedef int ipfw_obj_ctlv ;


 int IP_FW_NPTV6_STATS ;
 TYPE_1__* calloc (int,size_t) ;
 scalar_t__ do_get3 (int ,int *,size_t*) ;
 int free (TYPE_1__*) ;
 int memcpy (struct ipfw_nptv6_stats*,int *,int) ;
 int nptv6_fill_ntlv (int *,char const*,int ) ;

__attribute__((used)) static int
nptv6_get_stats(const char *name, uint8_t set, struct ipfw_nptv6_stats *stats)
{
 ipfw_obj_header *oh;
 ipfw_obj_ctlv *oc;
 size_t sz;

 sz = sizeof(*oh) + sizeof(*oc) + sizeof(*stats);
 oh = calloc(1, sz);
 nptv6_fill_ntlv(&oh->ntlv, name, set);
 if (do_get3(IP_FW_NPTV6_STATS, &oh->opheader, &sz) == 0) {
  oc = (ipfw_obj_ctlv *)(oh + 1);
  memcpy(stats, oc + 1, sizeof(*stats));
  free(oh);
  return (0);
 }
 free(oh);
 return (-1);
}
