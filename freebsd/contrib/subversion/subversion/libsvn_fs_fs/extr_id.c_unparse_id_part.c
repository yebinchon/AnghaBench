
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ revision; int number; } ;
typedef TYPE_1__ svn_fs_fs__id_part_t ;


 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int svn__i64toa (char*,scalar_t__) ;
 int svn__ui64tobase36 (char*,int ) ;

__attribute__((used)) static char *
unparse_id_part(char *p,
                const svn_fs_fs__id_part_t *part)
{
  if (SVN_IS_VALID_REVNUM(part->revision))
    {

      p += svn__ui64tobase36(p, part->number);
      if (part->revision > 0)
        {
          *(p++) = '-';
          p += svn__i64toa(p, part->revision);
        }
    }
  else
    {

      *(p++) = '_';
      p += svn__ui64tobase36(p, part->number);
    }

  *(p++) = '.';

  return p;
}
