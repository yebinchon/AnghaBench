
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int name; int ms; int s; } ;
struct TYPE_6__ {TYPE_1__ file; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int fprintf (int *,char*) ;
 int open_attr (int *,char*) ;
 int print_delim (int *,char*) ;
 int print_msec32 (int *,int ,int) ;
 int print_sec32 (int *,int ,int) ;
 int print_string (int *,int ,int ) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_file_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "file", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "time");
  print_sec32(fp, tok->tt.file.s, oflags);
  close_attr(fp);
  open_attr(fp, "msec");
  print_msec32(fp, tok->tt.file.ms, oflags);
  close_attr(fp);
  fprintf(fp, ">");
  print_string(fp, tok->tt.file.name, tok->tt.file.len);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_sec32(fp, tok->tt.file.s, oflags);
  print_delim(fp, del);
  print_msec32(fp, tok->tt.file.ms, oflags);
  print_delim(fp, del);
  print_string(fp, tok->tt.file.name, tok->tt.file.len);
 }
}
