
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iter_forwards {int dummy; } ;
struct delegpt {int name; } ;
typedef int RES ;


 int LDNS_RR_CLASS_IN ;
 struct delegpt* forwards_lookup (struct iter_forwards*,int *,int ) ;
 int log_assert (int) ;
 scalar_t__ query_dname_compare (int ,int *) ;
 int ssl_print_name_dp (int *,int *,int *,int ,struct delegpt*) ;
 int ssl_printf (int *,char*) ;

__attribute__((used)) static int
print_root_fwds(RES* ssl, struct iter_forwards* fwds, uint8_t* root)
{
 struct delegpt* dp;
 dp = forwards_lookup(fwds, root, LDNS_RR_CLASS_IN);
 if(!dp)
  return ssl_printf(ssl, "off (using root hints)\n");

 log_assert(query_dname_compare(dp->name, root)==0);
 return ssl_print_name_dp(ssl, ((void*)0), root, LDNS_RR_CLASS_IN, dp);
}
