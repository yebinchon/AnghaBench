
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int dest; int src; int chksm; int prot; int ttl; int offset; int id; int len; int tos; int version; } ;
struct TYPE_6__ {TYPE_1__ ip; } ;
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
 int print_mem (int *,int *,int) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_ip_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "ip", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "version");
  print_mem(fp, (u_char *)(&tok->tt.ip.version),
      sizeof(u_char));
  close_attr(fp);
  open_attr(fp, "service_type");
  print_mem(fp, (u_char *)(&tok->tt.ip.tos), sizeof(u_char));
  close_attr(fp);
  open_attr(fp, "len");
  print_2_bytes(fp, ntohs(tok->tt.ip.len), "%u");
  close_attr(fp);
  open_attr(fp, "id");
  print_2_bytes(fp, ntohs(tok->tt.ip.id), "%u");
  close_attr(fp);
  open_attr(fp, "offset");
  print_2_bytes(fp, ntohs(tok->tt.ip.offset), "%u");
  close_attr(fp);
  open_attr(fp, "time_to_live");
  print_mem(fp, (u_char *)(&tok->tt.ip.ttl), sizeof(u_char));
  close_attr(fp);
  open_attr(fp, "protocol");
  print_mem(fp, (u_char *)(&tok->tt.ip.prot), sizeof(u_char));
  close_attr(fp);
  open_attr(fp, "cksum");
  print_2_bytes(fp, ntohs(tok->tt.ip.chksm), "%u");
  close_attr(fp);
  open_attr(fp, "src_addr");
  print_ip_address(fp, tok->tt.ip.src);
  close_attr(fp);
  open_attr(fp, "dest_addr");
  print_ip_address(fp, tok->tt.ip.dest);
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_mem(fp, (u_char *)(&tok->tt.ip.version),
      sizeof(u_char));
  print_delim(fp, del);
  print_mem(fp, (u_char *)(&tok->tt.ip.tos), sizeof(u_char));
  print_delim(fp, del);
  print_2_bytes(fp, ntohs(tok->tt.ip.len), "%u");
  print_delim(fp, del);
  print_2_bytes(fp, ntohs(tok->tt.ip.id), "%u");
  print_delim(fp, del);
  print_2_bytes(fp, ntohs(tok->tt.ip.offset), "%u");
  print_delim(fp, del);
  print_mem(fp, (u_char *)(&tok->tt.ip.ttl), sizeof(u_char));
  print_delim(fp, del);
  print_mem(fp, (u_char *)(&tok->tt.ip.prot), sizeof(u_char));
  print_delim(fp, del);
  print_2_bytes(fp, ntohs(tok->tt.ip.chksm), "%u");
  print_delim(fp, del);
  print_ip_address(fp, tok->tt.ip.src);
  print_delim(fp, del);
  print_ip_address(fp, tok->tt.ip.dest);
 }
}
