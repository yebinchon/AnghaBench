
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {int name; } ;
struct group {int dummy; } ;


 int getgrnam_r (int ,struct group*,char*,size_t,struct group**) ;

__attribute__((used)) static int
wrap_getgrnam_r(union key key, struct group *grp, char *buffer, size_t bufsize,
    struct group **res)
{
 return (getgrnam_r(key.name, grp, buffer, bufsize, res));
}
