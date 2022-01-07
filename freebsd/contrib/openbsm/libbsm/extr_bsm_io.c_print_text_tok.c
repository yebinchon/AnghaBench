
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int text; } ;
struct TYPE_6__ {TYPE_1__ text; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_tag (int *,int ) ;
 int print_delim (int *,char*) ;
 int print_string (int *,int ,int ) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_text_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "text", oflags);
 if (oflags & AU_OFLAG_XML) {
  print_string(fp, tok->tt.text.text, tok->tt.text.len);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_string(fp, tok->tt.text.text, tok->tt.text.len);
 }
}
