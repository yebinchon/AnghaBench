
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fr_cksum; scalar_t__ fr_size; scalar_t__ fr_dsize; char* fr_caddr; scalar_t__ fr_data; int fr_ifnames; int fr_func; } ;
typedef TYPE_1__ frentry_t ;


 scalar_t__ FR_CMPSIZ ;
 int FR_NUM (int ) ;
 scalar_t__ IPF_FRDEST_DIFFERENT (int ) ;
 scalar_t__ IPF_IFNAMES_DIFFERENT (int ) ;
 scalar_t__ bcmp (char*,char*,scalar_t__) ;
 int fr_dif ;
 int * fr_ifnames ;
 int fr_rif ;
 int fr_tif ;

__attribute__((used)) static int
ipf_rule_compare(frentry_t *fr1, frentry_t *fr2)
{
 int i;

 if (fr1->fr_cksum != fr2->fr_cksum)
  return (1);
 if (fr1->fr_size != fr2->fr_size)
  return (2);
 if (fr1->fr_dsize != fr2->fr_dsize)
  return (3);
 if (bcmp((char *)&fr1->fr_func, (char *)&fr2->fr_func, FR_CMPSIZ)
     != 0)
  return (4);
 for (i = 0; i < FR_NUM(fr1->fr_ifnames); i++) {





  if (IPF_IFNAMES_DIFFERENT(fr_ifnames[i]))
   return(5);
 }

 if (IPF_FRDEST_DIFFERENT(fr_tif))
  return (6);
 if (IPF_FRDEST_DIFFERENT(fr_rif))
  return (7);
 if (IPF_FRDEST_DIFFERENT(fr_dif))
  return (8);
 if (!fr1->fr_data && !fr2->fr_data)
  return (0);
 if (fr1->fr_data && fr2->fr_data) {
  if (bcmp(fr1->fr_caddr, fr2->fr_caddr, fr1->fr_dsize) == 0)
   return (0);
 }
 return (9);
}
