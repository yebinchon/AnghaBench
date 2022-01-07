
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int dba_char_write (char) ;
 int dba_tell () ;

int32_t
dba_align(void)
{
 int32_t pos;

 pos = dba_tell();
 while (pos & 3) {
  dba_char_write('\0');
  pos++;
 }
 return pos;
}
