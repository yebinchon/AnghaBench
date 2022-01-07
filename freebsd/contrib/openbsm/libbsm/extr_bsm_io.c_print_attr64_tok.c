
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev; int nid; int fsid; int gid; int uid; int mode; } ;
struct TYPE_6__ {TYPE_1__ attr64; } ;
struct TYPE_7__ {TYPE_2__ tt; int id; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_XML ;
 int close_attr (int *) ;
 int close_tag (int *,int ) ;
 int open_attr (int *,char*) ;
 int print_4_bytes (int *,int ,char*) ;
 int print_8_bytes (int *,int ,char*) ;
 int print_delim (int *,char*) ;
 int print_group (int *,int ,int) ;
 int print_tok_type (int *,int ,char*,int) ;
 int print_user (int *,int ,int) ;

__attribute__((used)) static void
print_attr64_tok(FILE *fp, tokenstr_t *tok, char *del, int oflags)
{

 print_tok_type(fp, tok->id, "attribute", oflags);
 if (oflags & AU_OFLAG_XML) {
  open_attr(fp, "mode");
  print_4_bytes(fp, tok->tt.attr64.mode, "%o");
  close_attr(fp);
  open_attr(fp, "uid");
  print_user(fp, tok->tt.attr64.uid, oflags);
  close_attr(fp);
  open_attr(fp, "gid");
  print_group(fp, tok->tt.attr64.gid, oflags);
  close_attr(fp);
  open_attr(fp, "fsid");
  print_4_bytes(fp, tok->tt.attr64.fsid, "%u");
  close_attr(fp);
  open_attr(fp, "nodeid");
  print_8_bytes(fp, tok->tt.attr64.nid, "%lld");
  close_attr(fp);
  open_attr(fp, "device");
  print_8_bytes(fp, tok->tt.attr64.dev, "%llu");
  close_attr(fp);
  close_tag(fp, tok->id);
 } else {
  print_delim(fp, del);
  print_4_bytes(fp, tok->tt.attr64.mode, "%o");
  print_delim(fp, del);
  print_user(fp, tok->tt.attr64.uid, oflags);
  print_delim(fp, del);
  print_group(fp, tok->tt.attr64.gid, oflags);
  print_delim(fp, del);
  print_4_bytes(fp, tok->tt.attr64.fsid, "%u");
  print_delim(fp, del);
  print_8_bytes(fp, tok->tt.attr64.nid, "%lld");
  print_delim(fp, del);
  print_8_bytes(fp, tok->tt.attr64.dev, "%llu");
 }
}
