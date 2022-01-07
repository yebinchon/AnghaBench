
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int nvpair_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int NVP_NAME (int *) ;
 scalar_t__ NVP_TYPE (int *) ;
 int NV_UNIQUE_NAME ;
 int NV_UNIQUE_NAME_TYPE ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static boolean_t
nvt_nvpair_match(nvpair_t *nvp1, nvpair_t *nvp2, uint32_t nvflag)
{
 boolean_t match = B_FALSE;
 if (nvflag & NV_UNIQUE_NAME_TYPE) {
  if (strcmp(NVP_NAME(nvp1), NVP_NAME(nvp2)) == 0 &&
      NVP_TYPE(nvp1) == NVP_TYPE(nvp2))
   match = B_TRUE;
 } else {
  ASSERT(nvflag == 0 || nvflag & NV_UNIQUE_NAME);
  if (strcmp(NVP_NAME(nvp1), NVP_NAME(nvp2)) == 0)
   match = B_TRUE;
 }
 return (match);
}
