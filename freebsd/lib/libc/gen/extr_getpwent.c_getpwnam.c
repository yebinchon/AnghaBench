
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {char const* name; } ;
struct passwd {int dummy; } ;


 struct passwd* getpw (int ,union key) ;
 int wrap_getpwnam_r ;

struct passwd *
getpwnam(const char *name)
{
 union key key;

 key.name = name;
 return (getpw(wrap_getpwnam_r, key));
}
