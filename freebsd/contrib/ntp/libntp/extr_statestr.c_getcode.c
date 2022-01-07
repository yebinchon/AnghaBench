
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct codestring {int code; char const* string1; } ;


 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int snprintf (char*,int ,char*,char const*,int) ;

__attribute__((used)) static const char *
getcode(
 int code,
 const struct codestring * codetab
 )
{
 char * buf;

 while (codetab->code != -1) {
  if (codetab->code == code)
   return codetab->string1;
  codetab++;
 }

 LIB_GETBUF(buf);
 snprintf(buf, LIB_BUFLENGTH, "%s_%d", codetab->string1, code);

 return buf;
}
