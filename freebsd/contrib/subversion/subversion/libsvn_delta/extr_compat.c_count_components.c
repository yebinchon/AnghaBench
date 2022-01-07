
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
count_components(const char *relpath)
{
  int count = 1;
  const char *slash = strchr(relpath, '/');

  while (slash != ((void*)0))
    {
      ++count;
      slash = strchr(slash + 1, '/');
    }
  return count;
}
