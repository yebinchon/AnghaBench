
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HTTPHL_END ;
 int HTTPHL_ERROR ;
 int HTTPHL_STRING ;
 int HTTPHL_WORD ;
 char* http_parse_headerstring (char const*,char*) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strcspn (char const*,char*) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static int
http_header_lex(const char **cpp, char *buf)
{
 size_t l;

 *cpp += strspn(*cpp, " \t");
 if (**cpp == 0)
  return (HTTPHL_END);


 if (**cpp == ',' || **cpp == '=')
  return (*((*cpp)++));


 if (**cpp == '"') {
  *cpp = http_parse_headerstring(++*cpp, buf);
  if (*cpp == ((void*)0))
   return (HTTPHL_ERROR);
  return (HTTPHL_STRING);
 }


 l = strcspn(*cpp, " \t,=");
 memcpy(buf, *cpp, l);
 buf[l] = 0;
 *cpp += l;
 return (HTTPHL_WORD);
}
