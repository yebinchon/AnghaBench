
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char* gr_name; char* gr_passwd; scalar_t__ gr_gid; int ** gr_mem; } ;
typedef scalar_t__ gid_t ;


 unsigned int GR_GID ;
 unsigned int GR_MEM ;
 unsigned int GR_NAME ;
 unsigned int GR_PASSWD ;

__attribute__((used)) static unsigned int
group_fields(const struct group *grp)
{
 unsigned int result;

 result = 0;

 if (grp->gr_name != ((void*)0) && grp->gr_name[0] != '\0')
  result |= GR_NAME;

 if (grp->gr_passwd != ((void*)0) && grp->gr_passwd[0] != '\0')
  result |= GR_PASSWD;

 if (grp->gr_gid != (gid_t)-1)
  result |= GR_GID;

 if (grp->gr_mem != ((void*)0) && grp->gr_mem[0] != ((void*)0))
  result |= GR_MEM;

 return (result);
}
