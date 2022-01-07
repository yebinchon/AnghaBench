
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileargs_t ;
typedef int FILE ;


 int * fopen (char const*,char const*) ;

__attribute__((used)) static inline
FILE *fileargs_fopen(fileargs_t *fa, const char *name, const char *mode)
{
 (void) fa;
 return (fopen(name, mode));
}
