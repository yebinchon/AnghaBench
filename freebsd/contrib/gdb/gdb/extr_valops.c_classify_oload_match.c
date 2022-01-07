
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct badness_vector {int* rank; } ;
typedef enum oload_classification { ____Placeholder_oload_classification } oload_classification ;


 int INCOMPATIBLE ;
 int NON_STANDARD ;
 int STANDARD ;

__attribute__((used)) static enum oload_classification
classify_oload_match (struct badness_vector *oload_champ_bv,
        int nargs,
        int static_offset)
{
  int ix;

  for (ix = 1; ix <= nargs - static_offset; ix++)
    {
      if (oload_champ_bv->rank[ix] >= 100)
 return INCOMPATIBLE;
      else if (oload_champ_bv->rank[ix] >= 10)
 return NON_STANDARD;
    }

  return STANDARD;
}
