
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union key {int gid; } ;
struct group {int dummy; } ;
typedef int gid_t ;


 struct group* getgr (int ,union key) ;
 int wrap_getgrgid_r ;

struct group *
getgrgid(gid_t gid)
{
 union key key;

 key.gid = gid;
 return (getgr(wrap_getgrgid_r, key));
}
