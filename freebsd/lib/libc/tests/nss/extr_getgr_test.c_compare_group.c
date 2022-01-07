
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char* gr_name; char* gr_passwd; scalar_t__ gr_gid; char** gr_mem; } ;


 int dump_group (struct group*) ;
 int printf (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
compare_group(struct group *grp1, struct group *grp2, void *mdata)
{
 char **c1, **c2;

 if (grp1 == grp2)
  return (0);

 if (grp1 == ((void*)0) || grp2 == ((void*)0))
  goto errfin;

 if (strcmp(grp1->gr_name, grp2->gr_name) != 0 ||
     strcmp(grp1->gr_passwd, grp2->gr_passwd) != 0 ||
     grp1->gr_gid != grp2->gr_gid)
   goto errfin;

 c1 = grp1->gr_mem;
 c2 = grp2->gr_mem;

 if (grp1->gr_mem == ((void*)0) || grp2->gr_mem == ((void*)0))
  goto errfin;

 for (; *c1 && *c2; ++c1, ++c2)
  if (strcmp(*c1, *c2) != 0)
   goto errfin;

 if (*c1 != ((void*)0) || *c2 != ((void*)0))
  goto errfin;

 return 0;

errfin:
 if (mdata == ((void*)0)) {
  printf("following structures are not equal:\n");
  dump_group(grp1);
  dump_group(grp2);
 }

 return (-1);
}
