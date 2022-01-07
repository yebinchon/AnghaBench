
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ena_admin_feature_rss_flow_hash_input {int supported_input_sort; } ;


 int ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L4_SORT_MASK ;
 int ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L4_SORT_SHIFT ;

__attribute__((used)) static inline void set_ena_admin_feature_rss_flow_hash_input_L4_sort(struct ena_admin_feature_rss_flow_hash_input *p, uint16_t val)
{
 p->supported_input_sort |= (val << ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L4_SORT_SHIFT) & ENA_ADMIN_FEATURE_RSS_FLOW_HASH_INPUT_L4_SORT_MASK;
}
