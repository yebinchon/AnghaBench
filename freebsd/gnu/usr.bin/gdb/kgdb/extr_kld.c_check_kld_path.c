
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kld_ok (char*) ;
 char** kld_suffixes ;
 size_t strlcat (char*,char const*,size_t) ;
 int strlen (char*) ;

__attribute__((used)) static int
check_kld_path (char *path, size_t path_size)
{
 const char **suffix;
 char *ep;

 ep = path + strlen(path);
 suffix = kld_suffixes;
 while (*suffix != ((void*)0)) {
  if (strlcat(path, *suffix, path_size) < path_size) {
   if (kld_ok(path))
    return (1);
  }


  *ep = '\0';
  suffix++;
 }
 return (0);
}
