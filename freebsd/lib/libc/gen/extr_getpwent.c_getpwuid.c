
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {int uid; } ;
typedef int uid_t ;
struct passwd {int dummy; } ;


 struct passwd* getpw (int ,union key) ;
 int wrap_getpwuid_r ;

struct passwd *
getpwuid(uid_t uid)
{
 union key key;

 key.uid = uid;
 return (getpw(wrap_getpwuid_r, key));
}
