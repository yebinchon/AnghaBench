
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sae_data {TYPE_1__* tmp; } ;
struct TYPE_2__ {scalar_t__ dh; } ;


 int sae_parse_commit_element_ecc (struct sae_data*,int const**,int const*) ;
 int sae_parse_commit_element_ffc (struct sae_data*,int const**,int const*) ;

__attribute__((used)) static u16 sae_parse_commit_element(struct sae_data *sae, const u8 **pos,
        const u8 *end)
{
 if (sae->tmp->dh)
  return sae_parse_commit_element_ffc(sae, pos, end);
 return sae_parse_commit_element_ecc(sae, pos, end);
}
