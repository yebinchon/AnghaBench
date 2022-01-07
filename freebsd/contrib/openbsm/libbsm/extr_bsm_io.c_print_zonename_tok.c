
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int len; int zonename; } ;
struct TYPE_5__ {TYPE_2__ zonename; } ;
struct TYPE_7__ {TYPE_1__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int open_attr (int *,char*) ;
 int print_delim (int *,char*) ;
 int print_string (int *,int ,int ) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_zonename_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "zone", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "name");
  print_string(fp, tok->tt.zonename.zonename,
      tok->tt.zonename.len);
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_string(fp, tok->tt.zonename.zonename,
      tok->tt.zonename.len);
 }
}
