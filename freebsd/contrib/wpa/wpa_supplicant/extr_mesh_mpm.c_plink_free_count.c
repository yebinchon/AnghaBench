
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {scalar_t__ max_plinks; scalar_t__ num_plinks; } ;



__attribute__((used)) static int plink_free_count(struct hostapd_data *hapd)
{
 if (hapd->max_plinks > hapd->num_plinks)
  return hapd->max_plinks - hapd->num_plinks;
 return 0;
}
