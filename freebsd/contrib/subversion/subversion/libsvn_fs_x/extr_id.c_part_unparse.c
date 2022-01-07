
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int change_set; int number; } ;
typedef TYPE_1__ svn_fs_x__id_t ;


 int svn__ui64tobase36 (char*,int ) ;

__attribute__((used)) static char *
part_unparse(char *p,
             const svn_fs_x__id_t *part)
{
  p += svn__ui64tobase36(p, part->number);
  if (part->change_set >= 0)
    {
      *(p++) = '+';
      p += svn__ui64tobase36(p, part->change_set);
    }
  else
    {
      *(p++) = '-';
      p += svn__ui64tobase36(p, -part->change_set);
    }

  return p;
}
