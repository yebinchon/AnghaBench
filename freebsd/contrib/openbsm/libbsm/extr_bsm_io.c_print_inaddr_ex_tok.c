
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int addr; int type; } ;
struct TYPE_6__ {TYPE_1__ inaddr_ex; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_tag (int *,int ) ;
 int print_delim (int *,char*) ;
 int print_ip_ex_address (int *,int ,int ) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_inaddr_ex_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "ip addr ex", oflags);
 if (oflags & AU_OFLAG_XML) {
  print_ip_ex_address(fp, tok->tt.inaddr_ex.type,
      tok->tt.inaddr_ex.addr);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_ip_ex_address(fp, tok->tt.inaddr_ex.type,
      tok->tt.inaddr_ex.addr);
 }
}
