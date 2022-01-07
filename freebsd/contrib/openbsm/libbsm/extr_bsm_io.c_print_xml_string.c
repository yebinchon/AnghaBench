
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
typedef int FILE ;


 int VIS_CSTYLE ;
 int fprintf (int *,char*,...) ;
 int vis (char*,char const,int ,int ) ;

__attribute__((used)) static void
print_xml_string(FILE *fp, const char *str, size_t len)
{
 u_int32_t i;
 char visbuf[5];

 if (len == 0)
  return;

 for (i = 0; i < len; i++) {
  switch (str[i]) {
  case '\0':
   return;

  case '&':
   (void) fprintf(fp, "&amp;");
   break;

  case '<':
   (void) fprintf(fp, "&lt;");
   break;

  case '>':
   (void) fprintf(fp, "&gt;");
   break;

  case '\"':
   (void) fprintf(fp, "&quot;");
   break;

  case '\'':
   (void) fprintf(fp, "&apos;");
   break;

  default:
   (void) vis(visbuf, str[i], VIS_CSTYLE, 0);
   (void) fprintf(fp, "%s", visbuf);
   break;
  }
 }
}
