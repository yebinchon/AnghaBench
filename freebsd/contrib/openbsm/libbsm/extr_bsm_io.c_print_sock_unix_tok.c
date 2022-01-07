
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int path; int family; } ;
struct TYPE_6__ {TYPE_1__ sockunix; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int open_attr (int *,char*) ;
 int print_2_bytes (int *,int ,char*) ;
 int print_delim (int *,char*) ;
 int print_string (int *,int ,int ) ;
 int print_tok_type (int *,int ,char*,int) ;
 int strlen (int ) ;

__attribute__((used)) static void
print_sock_unix_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "socket-unix", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "type");
  print_2_bytes(fp, tok->tt.sockunix.family, "%u");
  close_attr(fp);
  open_attr(fp, "port");
  close_attr(fp);
  open_attr(fp, "addr");
  print_string(fp, tok->tt.sockunix.path,
   strlen(tok->tt.sockunix.path));
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_2_bytes(fp, tok->tt.sockunix.family, "%u");
  print_delim(fp, del);
  print_string(fp, tok->tt.sockunix.path,
   strlen(tok->tt.sockunix.path));
 }
}
