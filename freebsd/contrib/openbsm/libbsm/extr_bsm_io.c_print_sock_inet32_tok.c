
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * addr; int port; int family; } ;
struct TYPE_6__ {TYPE_1__ sockinet_ex32; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int ntohs (int ) ;
 int open_attr (int *,char*) ;
 int print_2_bytes (int *,int ,char*) ;
 int print_delim (int *,char*) ;
 int print_ip_address (int *,int ) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_sock_inet32_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "socket-inet", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "type");
  print_2_bytes(fp, tok->tt.sockinet_ex32.family, "%u");
  close_attr(fp);
  open_attr(fp, "port");
  print_2_bytes(fp, ntohs(tok->tt.sockinet_ex32.port), "%u");
  close_attr(fp);
  open_attr(fp, "addr");
  print_ip_address(fp, tok->tt.sockinet_ex32.addr[0]);
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_2_bytes(fp, tok->tt.sockinet_ex32.family, "%u");
  print_delim(fp, del);
  print_2_bytes(fp, ntohs(tok->tt.sockinet_ex32.port), "%u");
  print_delim(fp, del);
  print_ip_address(fp, tok->tt.sockinet_ex32.addr[0]);
 }
}
