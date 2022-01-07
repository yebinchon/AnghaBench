
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int addr; int type; int port; } ;
struct TYPE_7__ {TYPE_1__ tid; int sid; int pid; int rgid; int ruid; int egid; int euid; int auid; } ;
struct TYPE_8__ {TYPE_2__ proc64_ex; } ;
struct TYPE_9__ {TYPE_3__ tt; int id; } ;
typedef TYPE_4__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int open_attr (int *,char*) ;
 int print_4_bytes (int *,int ,char*) ;
 int print_8_bytes (int *,int ,char*) ;
 int print_delim (int *,char*) ;
 int print_group (int *,int ,int) ;
 int print_ip_ex_address (int *,int ,int ) ;
 int print_tok_type (int *,int ,char*,int) ;
 int print_user (int *,int ,int) ;

__attribute__((used)) static void
print_process64ex_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{
 print_tok_type(fp, tok->id, "process_ex", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "audit-uid");
  print_user(fp, tok->tt.proc64_ex.auid, oflags);
  close_attr(fp);
  open_attr(fp, "uid");
  print_user(fp, tok->tt.proc64_ex.euid, oflags);
  close_attr(fp);
  open_attr(fp, "gid");
  print_group(fp, tok->tt.proc64_ex.egid, oflags);
  close_attr(fp);
  open_attr(fp, "ruid");
  print_user(fp, tok->tt.proc64_ex.ruid, oflags);
  close_attr(fp);
  open_attr(fp, "rgid");
  print_group(fp, tok->tt.proc64_ex.rgid, oflags);
  close_attr(fp);
  open_attr(fp, "pid");
  print_4_bytes(fp, tok->tt.proc64_ex.pid, "%u");
  close_attr(fp);
  open_attr(fp, "sid");
  print_4_bytes(fp, tok->tt.proc64_ex.sid, "%u");
  close_attr(fp);
  open_attr(fp, "tid");
  print_8_bytes(fp, tok->tt.proc64_ex.tid.port, "%llu");
  print_ip_ex_address(fp, tok->tt.proc64_ex.tid.type,
      tok->tt.proc64_ex.tid.addr);
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_user(fp, tok->tt.proc64_ex.auid, oflags);
  print_delim(fp, del);
  print_user(fp, tok->tt.proc64_ex.euid, oflags);
  print_delim(fp, del);
  print_group(fp, tok->tt.proc64_ex.egid, oflags);
  print_delim(fp, del);
  print_user(fp, tok->tt.proc64_ex.ruid, oflags);
  print_delim(fp, del);
  print_group(fp, tok->tt.proc64_ex.rgid, oflags);
  print_delim(fp, del);
  print_4_bytes(fp, tok->tt.proc64_ex.pid, "%u");
  print_delim(fp, del);
  print_4_bytes(fp, tok->tt.proc64_ex.sid, "%u");
  print_delim(fp, del);
  print_8_bytes(fp, tok->tt.proc64_ex.tid.port, "%llu");
  print_delim(fp, del);
  print_ip_ex_address(fp, tok->tt.proc64_ex.tid.type,
      tok->tt.proc64_ex.tid.addr);
 }
}
