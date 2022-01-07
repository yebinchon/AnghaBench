
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;
typedef scalar_t__ int64_t ;
typedef int UT_string ;


 int utstring_printf (int *,char*,int ) ;

__attribute__((used)) static int
ucl_utstring_append_int (int64_t val, void *ud)
{
 UT_string *buf = ud;

 utstring_printf (buf, "%jd", (intmax_t)val);
 return 0;
}
