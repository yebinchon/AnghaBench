
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ ENOENT ;
 int S_ISREG (int ) ;
 scalar_t__ errno ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static int
is_regular_file (const char *name)
{
  struct stat st;
  const int status = stat (name, &st);






  if (status != 0)
    return (errno != ENOENT);

  return S_ISREG (st.st_mode);
}
