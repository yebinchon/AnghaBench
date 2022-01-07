
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;

__attribute__((used)) static void
freelist (char **cpp)
{
  int i;

  if (cpp == ((void*)0))
    return;
  for (i = 0; cpp[i] != ((void*)0); ++i)
    {
      free(cpp[i]);
      cpp[i] = ((void*)0);
    }
}
