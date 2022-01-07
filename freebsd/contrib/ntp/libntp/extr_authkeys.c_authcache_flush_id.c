
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ keyid_t ;


 scalar_t__ cache_flags ;
 int * cache_keyacclist ;
 scalar_t__ cache_keyid ;
 int * cache_secret ;
 scalar_t__ cache_secretsize ;
 scalar_t__ cache_type ;

__attribute__((used)) static void
authcache_flush_id(
 keyid_t id
 )
{
 if (cache_keyid == id) {
  cache_keyid = 0;
  cache_type = 0;
  cache_flags = 0;
  cache_secret = ((void*)0);
  cache_secretsize = 0;
  cache_keyacclist = ((void*)0);
 }
}
