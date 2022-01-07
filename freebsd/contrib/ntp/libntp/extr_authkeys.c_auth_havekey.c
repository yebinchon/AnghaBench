
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ keyid_t ;


 int * auth_findkey (scalar_t__) ;
 scalar_t__ cache_keyid ;

int
auth_havekey(
 keyid_t id
 )
{
 return
     (0 == id) ||
     (cache_keyid == id) ||
     (((void*)0) != auth_findkey(id));
}
