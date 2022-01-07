
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_admin_feature_rss_flow_hash_function {int supported_func; } ;


 int ENA_ADMIN_FEATURE_RSS_FLOW_HASH_FUNCTION_FUNCS_MASK ;

__attribute__((used)) static inline uint32_t get_ena_admin_feature_rss_flow_hash_function_funcs(const struct ena_admin_feature_rss_flow_hash_function *p)
{
 return p->supported_func & ENA_ADMIN_FEATURE_RSS_FLOW_HASH_FUNCTION_FUNCS_MASK;
}
