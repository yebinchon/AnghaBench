
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_mem; int gr_gid; int gr_passwd; int gr_name; } ;


 int grpGID ;
 int grpMems ;
 int grpName ;
 int grpPasswd ;

__attribute__((used)) static void
build_grp(struct group *grp)
{
 grp->gr_name = grpName;
 grp->gr_passwd = grpPasswd;
 grp->gr_gid = grpGID;
 grp->gr_mem = grpMems;

 return;
}
