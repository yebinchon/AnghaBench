
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int text; int val; int no; } ;
struct TYPE_6__ {TYPE_1__ arg64; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int open_attr (int *,char*) ;
 int print_1_byte (int *,int ,char*) ;
 int print_8_bytes (int *,int ,char*) ;
 int print_delim (int *,char*) ;
 int print_string (int *,int ,int ) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_arg64_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "argument", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "arg-num");
  print_1_byte(fp, tok->tt.arg64.no, "%u");
  close_attr(fp);
  open_attr(fp, "value");
  print_8_bytes(fp, tok->tt.arg64.val, "0x%llx");
  close_attr(fp);
  open_attr(fp, "desc");
  print_string(fp, tok->tt.arg64.text, tok->tt.arg64.len);
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_1_byte(fp, tok->tt.arg64.no, "%u");
  print_delim(fp, del);
  print_8_bytes(fp, tok->tt.arg64.val, "0x%llx");
  print_delim(fp, del);
  print_string(fp, tok->tt.arg64.text, tok->tt.arg64.len);
 }
}
