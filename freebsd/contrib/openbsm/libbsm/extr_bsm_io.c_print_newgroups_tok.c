
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int no; int * list; } ;
struct TYPE_6__ {TYPE_1__ grps; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_tag (int *,int ) ;
 int fprintf (int *,char*) ;
 int print_delim (int *,char*) ;
 int print_group (int *,int ,int) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_newgroups_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{
 int i;

 print_tok_type(fp, tok->id, "group", oflags);
 for (i = 0; i < tok->tt.grps.no; i++) {
  if (oflags & AU_OFLAG_XML) {
   fprintf(fp, "<gid>");
   print_group(fp, tok->tt.grps.list[i], oflags);
   fprintf(fp, "</gid>");
   close_tag(fp, tok->id);
  } else {
   print_delim(fp, del);
   print_group(fp, tok->tt.grps.list[i], oflags);
  }
 }
}
