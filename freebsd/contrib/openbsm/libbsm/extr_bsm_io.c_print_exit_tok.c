
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ret; int status; } ;
struct TYPE_6__ {TYPE_1__ exit; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int open_attr (int *,char*) ;
 int print_4_bytes (int *,int ,char*) ;
 int print_delim (int *,char*) ;
 int print_errval (int *,int ) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_exit_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "exit", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "errval");
  print_errval(fp, tok->tt.exit.status);
  close_attr(fp);
  open_attr(fp, "retval");
  print_4_bytes(fp, tok->tt.exit.ret, "%u");
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_errval(fp, tok->tt.exit.status);
  print_delim(fp, del);
  print_4_bytes(fp, tok->tt.exit.ret, "%u");
 }
}
