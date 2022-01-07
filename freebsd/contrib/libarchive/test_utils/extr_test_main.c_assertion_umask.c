
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertion_count (char const*,int) ;
 int umask (int) ;

int
assertion_umask(const char *file, int line, int mask)
{
 assertion_count(file, line);
 (void)file;
 (void)line;
 umask(mask);
 return (1);
}
