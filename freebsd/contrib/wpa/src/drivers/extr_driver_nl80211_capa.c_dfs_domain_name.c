
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;







__attribute__((used)) static const char * dfs_domain_name(enum nl80211_dfs_regions region)
{
 switch (region) {
 case 128:
  return "DFS-UNSET";
 case 130:
  return "DFS-FCC";
 case 131:
  return "DFS-ETSI";
 case 129:
  return "DFS-JP";
 default:
  return "DFS-invalid";
 }
}
