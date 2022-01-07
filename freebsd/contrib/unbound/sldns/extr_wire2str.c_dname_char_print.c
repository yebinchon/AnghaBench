
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 scalar_t__ isascii (unsigned char) ;
 scalar_t__ isgraph (unsigned char) ;
 int sldns_str_print (char**,size_t*,char*,unsigned int) ;

__attribute__((used)) static int dname_char_print(char** s, size_t* slen, uint8_t c)
{
 if(c == '.' || c == ';' || c == '(' || c == ')' || c == '\\')
  return sldns_str_print(s, slen, "\\%c", c);
 else if(!(isascii((unsigned char)c) && isgraph((unsigned char)c)))
  return sldns_str_print(s, slen, "\\%03u", (unsigned)c);

 if(*slen) {
  **s = (char)c;
  (*s)++;
  (*slen)--;
 }
 return 1;
}
