
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __gl_stat_t ;


 int gl_stat (char const*,int *) ;

__attribute__((used)) static int
gl_lstat(const char *name , __gl_stat_t *st)
{
 return gl_stat(name, st);
}
