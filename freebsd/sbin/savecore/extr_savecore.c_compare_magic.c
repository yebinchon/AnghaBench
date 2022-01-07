
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kerneldumpheader {int magic; } ;


 scalar_t__ strncmp (int ,char const*,int) ;

__attribute__((used)) static bool
compare_magic(const struct kerneldumpheader *kdh, const char *magic)
{

 return (strncmp(kdh->magic, magic, sizeof(kdh->magic)) == 0);
}
