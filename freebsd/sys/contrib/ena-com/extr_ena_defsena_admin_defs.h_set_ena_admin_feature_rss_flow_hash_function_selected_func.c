
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_admin_feature_rss_flow_hash_function {int selected_func; } ;


 int ENA_ADMIN_FEATURE_RSS_FLOW_HASH_FUNCTION_SELECTED_FUNC_MASK ;

__attribute__((used)) static inline void set_ena_admin_feature_rss_flow_hash_function_selected_func(struct ena_admin_feature_rss_flow_hash_function *p, uint32_t val)
{
 p->selected_func |= val & ENA_ADMIN_FEATURE_RSS_FLOW_HASH_FUNCTION_SELECTED_FUNC_MASK;
}
