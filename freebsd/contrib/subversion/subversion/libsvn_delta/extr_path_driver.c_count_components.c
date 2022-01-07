
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static int
count_components(const char *path)
{
  int count = 1;
  const char *instance = path;

  if ((strlen(path) == 1) && (path[0] == '/'))
    return 0;

  do
    {
      instance++;
      instance = strchr(instance, '/');
      if (instance)
        count++;
    }
  while (instance);

  return count;
}
