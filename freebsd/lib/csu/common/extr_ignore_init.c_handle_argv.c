
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* __progname ;
 char** environ ;

__attribute__((used)) static inline void
handle_argv(int argc, char *argv[], char **env)
{
 const char *s;

 if (environ == ((void*)0))
  environ = env;
 if (argc > 0 && argv[0] != ((void*)0)) {
  __progname = argv[0];
  for (s = __progname; *s != '\0'; s++) {
   if (*s == '/')
    __progname = s + 1;
  }
 }
}
