
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* manpath; int * arch; int * sec; int * query; } ;
struct req {int psz; int ** p; TYPE_1__ q; } ;
typedef enum focus { ____Placeholder_focus } focus ;


 int FOCUS_QUERY ;
 int arch_MAX ;
 char** arch_names ;
 int html_print (int *) ;
 int printf (char*,...) ;
 int puts (char*) ;
 char* scriptname ;
 int sec_MAX ;
 char** sec_names ;
 char** sec_numbers ;
 scalar_t__ strcmp (char*,int *) ;

__attribute__((used)) static void
resp_searchform(const struct req *req, enum focus focus)
{
 int i;

 printf("<form action=\"/%s\" method=\"get\">\n"
        "  <fieldset>\n"
        "    <legend>Manual Page Search Parameters</legend>\n",
        scriptname);



 printf("    <input type=\"search\" name=\"query\" value=\"");
 if (req->q.query != ((void*)0))
  html_print(req->q.query);
 printf( "\" size=\"40\"");
 if (focus == FOCUS_QUERY)
  printf(" autofocus");
 puts(">");



 printf( "    <button type=\"submit\" name=\"apropos\" value=\"0\">"
  "man</button>\n"
  "    <button type=\"submit\" name=\"apropos\" value=\"1\">"
  "apropos</button>\n"
  "    <br/>\n");



 puts("    <select name=\"sec\">");
 for (i = 0; i < sec_MAX; i++) {
  printf("      <option value=\"%s\"", sec_numbers[i]);
  if (((void*)0) != req->q.sec &&
      0 == strcmp(sec_numbers[i], req->q.sec))
   printf(" selected=\"selected\"");
  printf(">%s</option>\n", sec_names[i]);
 }
 puts("    </select>");



 printf( "    <select name=\"arch\">\n"
  "      <option value=\"default\"");
 if (((void*)0) == req->q.arch)
  printf(" selected=\"selected\"");
 puts(">All Architectures</option>");
 for (i = 0; i < arch_MAX; i++) {
  printf("      <option");
  if (((void*)0) != req->q.arch &&
      0 == strcmp(arch_names[i], req->q.arch))
   printf(" selected=\"selected\"");
  printf(">%s</option>\n", arch_names[i]);
 }
 puts("    </select>");



 if (req->psz > 1) {
  puts("    <select name=\"manpath\">");
  for (i = 0; i < (int)req->psz; i++) {
   printf("      <option");
   if (strcmp(req->q.manpath, req->p[i]) == 0)
    printf(" selected=\"selected\"");
   printf(">");
   html_print(req->p[i]);
   puts("</option>");
  }
  puts("    </select>");
 }

 puts("  </fieldset>\n"
      "</form>");
}
