
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int AMDVI_MAX_DOMAIN ;
 int amdvi_dom_id ;

__attribute__((used)) static uint16_t
amdvi_domainId(void)
{






 if (amdvi_dom_id == AMDVI_MAX_DOMAIN)
  amdvi_dom_id = 1;

 return ((uint16_t)amdvi_dom_id++);
}
