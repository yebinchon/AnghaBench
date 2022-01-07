
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {int name; } ;
struct passwd {int dummy; } ;


 int getpwnam_r (int ,struct passwd*,char*,size_t,struct passwd**) ;

__attribute__((used)) static int
wrap_getpwnam_r(union key key, struct passwd *pwd, char *buffer,
    size_t bufsize, struct passwd **res)
{
 return (getpwnam_r(key.name, pwd, buffer, bufsize, res));
}
