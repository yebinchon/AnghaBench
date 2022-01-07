
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int r_addr; int atype; int r_port; int l_addr; int l_port; int type; int domain; } ;
struct TYPE_6__ {TYPE_1__ socket_ex32; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int ntohs (int ) ;
 int open_attr (int *,char*) ;
 int print_2_bytes (int *,int ,char*) ;
 int print_4_bytes (int *,int ,char*) ;
 int print_delim (int *,char*) ;
 int print_ip_ex_address (int *,int ,int ) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_socketex32_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{







 print_tok_type(fp, tok->id, "socket", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "sock_dom");
  print_2_bytes(fp, tok->tt.socket_ex32.domain, "%#x");
  close_attr(fp);
  open_attr(fp, "sock_type");
  print_2_bytes(fp, tok->tt.socket_ex32.type, "%#x");
  close_attr(fp);
  open_attr(fp, "lport");
  print_2_bytes(fp, ntohs(tok->tt.socket_ex32.l_port), "%#x");
  close_attr(fp);
  open_attr(fp, "laddr");
  print_ip_ex_address(fp, tok->tt.socket_ex32.atype,
      tok->tt.socket_ex32.l_addr);
  close_attr(fp);
  open_attr(fp, "faddr");
  print_ip_ex_address(fp, tok->tt.socket_ex32.atype,
      tok->tt.socket_ex32.r_addr);
  close_attr(fp);
  open_attr(fp, "fport");
  print_2_bytes(fp, ntohs(tok->tt.socket_ex32.r_port), "%#x");
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_2_bytes(fp, tok->tt.socket_ex32.domain, "%#x");
  print_delim(fp, del);
  print_2_bytes(fp, tok->tt.socket_ex32.type, "%#x");
  print_delim(fp, del);
  print_2_bytes(fp, ntohs(tok->tt.socket_ex32.l_port), "%#x");
  print_delim(fp, del);
  print_ip_ex_address(fp, tok->tt.socket_ex32.atype,
      tok->tt.socket_ex32.l_addr);
  print_delim(fp, del);
  print_4_bytes(fp, ntohs(tok->tt.socket_ex32.r_port), "%#x");
  print_delim(fp, del);
  print_ip_ex_address(fp, tok->tt.socket_ex32.atype,
      tok->tt.socket_ex32.r_addr);
 }
}
