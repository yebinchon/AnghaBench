
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ms; int s; int addr; int ad_type; int e_mod; int e_type; int version; int size; } ;
struct TYPE_6__ {TYPE_1__ hdr64_ex; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int open_attr (int *,char*) ;
 int print_1_byte (int *,int ,char*) ;
 int print_4_bytes (int *,int ,char*) ;
 int print_delim (int *,char*) ;
 int print_event (int *,int ,int) ;
 int print_evmod (int *,int ,int) ;
 int print_ip_ex_address (int *,int ,int ) ;
 int print_msec64 (int *,int ,int) ;
 int print_sec64 (int *,int ,int) ;
 int print_tok_type (int *,int ,char*,int) ;

__attribute__((used)) static void
print_header64_ex_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "header_ex", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "version");
  print_1_byte(fp, tok->tt.hdr64_ex.version, "%u");
  close_attr(fp);
  open_attr(fp, "event");
  print_event(fp, tok->tt.hdr64_ex.e_type, oflags);
  close_attr(fp);
  open_attr(fp, "modifier");
  print_evmod(fp, tok->tt.hdr64_ex.e_mod, oflags);
  close_attr(fp);
  open_attr(fp, "host");
  print_ip_ex_address(fp, tok->tt.hdr64_ex.ad_type,
      tok->tt.hdr64_ex.addr);
  close_attr(fp);
  open_attr(fp, "time");
  print_sec64(fp, tok->tt.hdr64_ex.s, oflags);
  close_attr(fp);
  open_attr(fp, "msec");
  print_msec64(fp, tok->tt.hdr64_ex.ms, oflags);
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_4_bytes(fp, tok->tt.hdr64_ex.size, "%u");
  print_delim(fp, del);
  print_1_byte(fp, tok->tt.hdr64_ex.version, "%u");
  print_delim(fp, del);
  print_event(fp, tok->tt.hdr64_ex.e_type, oflags);
  print_delim(fp, del);
  print_evmod(fp, tok->tt.hdr64_ex.e_mod, oflags);
  print_delim(fp, del);
  print_ip_ex_address(fp, tok->tt.hdr64_ex.ad_type,
      tok->tt.hdr64_ex.addr);
  print_delim(fp, del);
  print_sec64(fp, tok->tt.hdr64_ex.s, oflags);
  print_delim(fp, del);
  print_msec64(fp, tok->tt.hdr64_ex.ms, oflags);
 }
}
