
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {scalar_t__ uid; } ;
struct passwd {int dummy; } ;


 struct passwd* getpw (int ,union key) ;
 int wrap_getpwent_r ;

struct passwd *
getpwent(void)
{
 union key key;

 key.uid = 0;
 return (getpw(wrap_getpwent_r, key));
}
