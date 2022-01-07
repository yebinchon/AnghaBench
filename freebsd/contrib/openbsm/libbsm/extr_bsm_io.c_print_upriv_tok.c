
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int privstrlen; int priv; scalar_t__ sorf; } ;
struct TYPE_6__ {TYPE_1__ priv; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int fprintf (int *,char*) ;
 int open_attr (int *,char*) ;
 int print_delim (int *,char*) ;
 int print_string (int *,int ,int ) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_upriv_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "use of privilege", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "status");
  if (tok->tt.priv.sorf)
   (void) fprintf(fp, "successful use of priv");
  else
   (void) fprintf(fp, "failed use of priv");
  close_attr(fp);
  open_attr(fp, "name");
  print_string(fp, tok->tt.priv.priv, tok->tt.priv.privstrlen);
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  if (tok->tt.priv.sorf)
   (void) fprintf(fp, "successful use of priv");
  else
   (void) fprintf(fp, "failed use of priv");
  print_delim(fp, del);
  print_string(fp, tok->tt.priv.priv, tok->tt.priv.privstrlen);
 }
}
