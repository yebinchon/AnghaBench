
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct FTW {int level; } ;


 int ATF_CHECK_MSG (int,char*,char const*,int,int ) ;

 int FTW_DEPTH ;

 int FTW_PHYS ;

 int ftwflags ;

__attribute__((used)) static int
cb(const char *path, const struct stat *st, int type, struct FTW *f)
{

 switch (type) {
 case 130:
  if ((ftwflags & FTW_DEPTH) == 0)
   return (0);
  break;
 case 129:
  if ((ftwflags & FTW_DEPTH) != 0)
   return (0);
  break;
 case 128:
  if ((ftwflags & FTW_PHYS) != 0)
   return (0);
  break;
 }
 ATF_CHECK_MSG(0,
     "unexpected path=%s type=%d f.level=%d\n",
     path, type, f->level);
 return (0);
}
