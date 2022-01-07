
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int size; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ opaque; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_tag (int *,int ) ;
 int print_2_bytes (int *,int ,char*) ;
 int print_delim (int *,char*) ;
 int print_mem (int *,int *,int ) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_opaque_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "opaque", oflags);
 if (oflags & AU_OFLAG_XML) {
  print_mem(fp, (u_char*)tok->tt.opaque.data,
      tok->tt.opaque.size);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_2_bytes(fp, tok->tt.opaque.size, "%u");
  print_delim(fp, del);
  print_mem(fp, (u_char*)tok->tt.opaque.data,
      tok->tt.opaque.size);
 }
}
