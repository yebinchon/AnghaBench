
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct TYPE_5__ {size_t count; int * text; } ;
struct TYPE_6__ {TYPE_1__ execarg; } ;
struct TYPE_7__ {int id; TYPE_2__ tt; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_tag (int *,int ) ;
 int fprintf (int *,char*) ;
 int print_delim (int *,char*) ;
 int print_string (int *,int ,int ) ;
 int print_tok_type (int *,int ,char*,int) ;
 int print_xml_string (int *,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void
print_execarg_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{
 u_int32_t i;

 print_tok_type(fp, tok->id, "exec arg", oflags);
 for (i = 0; i < tok->tt.execarg.count; i++) {
  if (oflags & AU_OFLAG_XML) {
   fprintf(fp, "<arg>");
   print_xml_string(fp, tok->tt.execarg.text[i],
       strlen(tok->tt.execarg.text[i]));
   fprintf(fp, "</arg>");
  } else {
   print_delim(fp, del);
   print_string(fp, tok->tt.execarg.text[i],
       strlen(tok->tt.execarg.text[i]));
  }
 }
 if (oflags & AU_OFLAG_XML)
  close_tag(fp, tok->id);
}
