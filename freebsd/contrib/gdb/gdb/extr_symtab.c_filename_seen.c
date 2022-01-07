
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,int) ;

__attribute__((used)) static int
filename_seen (const char *file, int add, int *first)
{

  static const char **tab = ((void*)0);



  static int tab_alloc_size = (256 - 24) / sizeof (char *);

  static int tab_cur_size;
  const char **p;

  if (*first)
    {
      if (tab == ((void*)0))
 tab = (const char **) xmalloc (tab_alloc_size * sizeof (*tab));
      tab_cur_size = 0;
    }


  for (p = tab; p < tab + tab_cur_size; p++)
    if (strcmp (*p, file) == 0)
      return 1;


  if (add)
    {
      if (tab_cur_size == tab_alloc_size)
 {
   tab_alloc_size *= 2;
   tab = (const char **) xrealloc ((char *) tab,
       tab_alloc_size * sizeof (*tab));
 }
      tab[tab_cur_size++] = file;
    }

  return 0;
}
