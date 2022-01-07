
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int key; int seq; int mode; int pgid; int puid; int gid; int uid; } ;
struct TYPE_6__ {TYPE_1__ ipcperm; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int open_attr (int *,char*) ;
 int print_4_bytes (int *,int ,char*) ;
 int print_delim (int *,char*) ;
 int print_group (int *,int ,int) ;
 int print_tok_type (int *,int ,char*,int) ;
 int print_user (int *,int ,int) ;

__attribute__((used)) static void
print_ipcperm_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "IPC perm", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "uid");
  print_user(fp, tok->tt.ipcperm.uid, oflags);
  close_attr(fp);
  open_attr(fp, "gid");
  print_group(fp, tok->tt.ipcperm.gid, oflags);
  close_attr(fp);
  open_attr(fp, "creator-uid");
  print_user(fp, tok->tt.ipcperm.puid, oflags);
  close_attr(fp);
  open_attr(fp, "creator-gid");
  print_group(fp, tok->tt.ipcperm.pgid, oflags);
  close_attr(fp);
  open_attr(fp, "mode");
  print_4_bytes(fp, tok->tt.ipcperm.mode, "%o");
  close_attr(fp);
  open_attr(fp, "seq");
  print_4_bytes(fp, tok->tt.ipcperm.seq, "%u");
  close_attr(fp);
  open_attr(fp, "key");
  print_4_bytes(fp, tok->tt.ipcperm.key, "%u");
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_user(fp, tok->tt.ipcperm.uid, oflags);
  print_delim(fp, del);
  print_group(fp, tok->tt.ipcperm.gid, oflags);
  print_delim(fp, del);
  print_user(fp, tok->tt.ipcperm.puid, oflags);
  print_delim(fp, del);
  print_group(fp, tok->tt.ipcperm.pgid, oflags);
  print_delim(fp, del);
  print_4_bytes(fp, tok->tt.ipcperm.mode, "%o");
  print_delim(fp, del);
  print_4_bytes(fp, tok->tt.ipcperm.seq, "%u");
  print_delim(fp, del);
  print_4_bytes(fp, tok->tt.ipcperm.key, "%u");
 }
}
