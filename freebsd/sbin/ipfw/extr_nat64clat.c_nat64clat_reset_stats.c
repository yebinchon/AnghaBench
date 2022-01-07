
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int oh ;
struct TYPE_3__ {int opheader; int ntlv; } ;
typedef TYPE_1__ ipfw_obj_header ;


 int EX_OSERR ;
 int IP_FW_NAT64CLAT_RESET_STATS ;
 scalar_t__ do_set3 (int ,int *,int) ;
 int err (int ,char*,char const*) ;
 int memset (TYPE_1__*,int ,int) ;
 int nat64clat_fill_ntlv (int *,char const*,int ) ;

__attribute__((used)) static void
nat64clat_reset_stats(const char *name, uint8_t set)
{
 ipfw_obj_header oh;

 memset(&oh, 0, sizeof(oh));
 nat64clat_fill_ntlv(&oh.ntlv, name, set);
 if (do_set3(IP_FW_NAT64CLAT_RESET_STATS, &oh.opheader, sizeof(oh)) != 0)
  err(EX_OSERR, "failed to reset stats for instance %s", name);
}
