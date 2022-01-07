
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_SLEEP ;
 char* kmem_zalloc (int,int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
dtrace_strdup(const char *str)
{
 char *new = kmem_zalloc((str != ((void*)0) ? strlen(str) : 0) + 1, KM_SLEEP);

 if (str != ((void*)0))
  (void) strcpy(new, str);

 return (new);
}
