
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {scalar_t__ gid; } ;
struct group {int dummy; } ;


 struct group* getgr (int ,union key) ;
 int wrap_getgrent_r ;

struct group *
getgrent(void)
{
 union key key;

 key.gid = 0;
 return (getgr(wrap_getgrent_r, key));
}
