
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_share_info {int mode; int usecount; int flags; int gid; int uid; int sname; } ;


 char* group_from_gid (int ,int ) ;
 int iprintf (int,char*,int ,...) ;
 int printf (char*,...) ;
 int smb_printb (char*,int ,int ) ;
 int ss_flags ;
 char* user_from_uid (int ,int ) ;
 int verbose ;

__attribute__((used)) static void
print_shareinfo(struct smb_share_info *sip)
{
 char buf[200];

 iprintf(4, "Share:    %s", sip->sname);
 printf("(%s:%s) %o", user_from_uid(sip->uid, 0),
     group_from_gid(sip->gid, 0), sip->mode);
 printf("\n");
 if (!verbose)
  return;
 iprintf(8, "flags:    0x%04x %s\n", sip->flags,
     smb_printb(buf, sip->flags, ss_flags));
 iprintf(8, "usecount: %d\n", sip->usecount);
}
