
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UT_string ;


 int utstring_append_len (int *,unsigned char const*,size_t) ;

__attribute__((used)) static int
ucl_utstring_append_len (const unsigned char *str, size_t len, void *ud)
{
 UT_string *buf = ud;

 utstring_append_len (buf, str, len);

 return 0;
}
