
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t CHECKS_STR_SIZE ;
 size_t LZMA_CHECK_ID_MAX ;
 size_t UINT32_C (int) ;
 int _ (int ) ;
 int * check_names ;
 int my_snprintf (char**,size_t*,char*,char const*,int ) ;
 scalar_t__ opt_robot ;

__attribute__((used)) static void
get_check_names(char buf[CHECKS_STR_SIZE],
  uint32_t checks, bool space_after_comma)
{



 if (checks == 0)
  checks = 1;

 char *pos = buf;
 size_t left = CHECKS_STR_SIZE;

 const char *sep = space_after_comma ? ", " : ",";
 bool comma = 0;

 for (size_t i = 0; i <= LZMA_CHECK_ID_MAX; ++i) {
  if (checks & (UINT32_C(1) << i)) {
   my_snprintf(&pos, &left, "%s%s",
     comma ? sep : "",
     opt_robot ? check_names[i]
      : _(check_names[i]));
   comma = 1;
  }
 }

 return;
}
