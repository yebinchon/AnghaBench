
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int isdigit (char) ;
 int isxdigit (char) ;
 int strtoul (char*,int ,int) ;

void strexpand(char *source)
{
 uint8_t c;
 char *chr;
 char *pos;
 char d[4];


 pos = chr = source;


 while (*pos != '\0') {
  if (*chr != '\\') {
   *pos = *chr;
   pos++;
   chr++;
   continue;
  }


  switch (*++chr) {
  case 'a': *pos = '\a'; break;
  case 'b': *pos = '\b'; break;
  case 'f': *pos = '\f'; break;
  case 'n': *pos = '\n'; break;
  case 'r': *pos = '\r'; break;
  case 't': *pos = '\t'; break;
  case 'v': *pos = '\v'; break;
  case 'x':
   d[2] = '\0';


   d[0] = isxdigit(*(chr+1)) ? *++chr : '\0';
   if (d[0] != '\0')
    d[1] = isxdigit(*(chr+1)) ? *++chr : '\0';


   c = (uint8_t)strtoul(d, 0, 16);


   *pos = (c != 0 || d[0] == '0') ? c : *++chr;
   break;
  case '0':
   d[3] = '\0';


   d[0] = (isdigit(*(chr+1)) && *(chr+1) < '8') ?
       *++chr : '\0';
   if (d[0] != '\0')
    d[1] = (isdigit(*(chr+1)) && *(chr+1) < '8') ?
        *++chr : '\0';
   if (d[1] != '\0')
    d[2] = (isdigit(*(chr+1)) && *(chr+1) < '8') ?
        *++chr : '\0';


   c = (uint8_t)strtoul(d, 0, 8);


   *pos = c;
   break;
  default:
   if (isdigit(*chr) && *chr < '8') {
    d[0] = *chr;
    d[1] = '\0';
    *pos = (uint8_t)strtoul(d, 0, 8);
   } else
    *pos = *chr;
  }


  pos++;
  chr++;
 }
}
