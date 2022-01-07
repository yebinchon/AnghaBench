
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {char const* name; } ;
struct group {int dummy; } ;


 struct group* getgr (int ,union key) ;
 int wrap_getgrnam_r ;

struct group *
getgrnam(const char *name)
{
 union key key;

 key.name = name;
 return (getgr(wrap_getgrnam_r, key));
}
