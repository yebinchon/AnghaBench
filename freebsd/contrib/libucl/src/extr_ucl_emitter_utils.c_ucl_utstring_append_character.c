
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* d; size_t i; } ;
typedef TYPE_1__ UT_string ;


 int memset (char*,unsigned char,size_t) ;
 int utstring_append_c (TYPE_1__*,unsigned char) ;
 int utstring_reserve (TYPE_1__*,size_t) ;

__attribute__((used)) static int
ucl_utstring_append_character (unsigned char c, size_t len, void *ud)
{
 UT_string *buf = ud;

 if (len == 1) {
  utstring_append_c (buf, c);
 }
 else {
  utstring_reserve (buf, len + 1);
  memset (&buf->d[buf->i], c, len);
  buf->i += len;
  buf->d[buf->i] = '\0';
 }

 return 0;
}
