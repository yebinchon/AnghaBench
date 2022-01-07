
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isprint (unsigned char) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static size_t
bsdtar_expand_char(char *buff, size_t offset, char c)
{
 size_t i = offset;

 if (isprint((unsigned char)c) && c != '\\')
  buff[i++] = c;
 else {
  buff[i++] = '\\';
  switch (c) {
  case '\a': buff[i++] = 'a'; break;
  case '\b': buff[i++] = 'b'; break;
  case '\f': buff[i++] = 'f'; break;
  case '\n': buff[i++] = 'n'; break;


  case '\r': buff[i++] = 'r'; break;

  case '\t': buff[i++] = 't'; break;
  case '\v': buff[i++] = 'v'; break;
  case '\\': buff[i++] = '\\'; break;
  default:
   sprintf(buff + i, "%03o", 0xFF & (int)c);
   i += 3;
  }
 }

 return (i - offset);
}
