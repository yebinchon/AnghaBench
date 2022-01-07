
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int val; int err; } ;
struct TYPE_6__ {TYPE_1__ ret64; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int open_attr (int *,char*) ;
 int print_8_bytes (int *,int ,char*) ;
 int print_delim (int *,char*) ;
 int print_retval (int *,int ,int) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_return64_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "return", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "errval");
  print_retval(fp, tok->tt.ret64.err, oflags);
  close_attr(fp);
  open_attr(fp, "retval");
  print_8_bytes(fp, tok->tt.ret64.val, "%lld");
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_retval(fp, tok->tt.ret64.err, oflags);
  print_delim(fp, del);
  print_8_bytes(fp, tok->tt.ret64.val, "%lld");
 }
}
