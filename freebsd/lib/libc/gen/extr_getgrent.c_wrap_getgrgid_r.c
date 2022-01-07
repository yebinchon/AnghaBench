
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {int gid; } ;
struct group {int dummy; } ;


 int getgrgid_r (int ,struct group*,char*,size_t,struct group**) ;

__attribute__((used)) static int
wrap_getgrgid_r(union key key, struct group *grp, char *buffer, size_t bufsize,
    struct group **res)
{
 return (getgrgid_r(key.gid, grp, buffer, bufsize, res));
}
