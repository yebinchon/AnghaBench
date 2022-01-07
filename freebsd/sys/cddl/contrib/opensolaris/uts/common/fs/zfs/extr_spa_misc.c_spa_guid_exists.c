
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int * spa_by_guid (int ,int ) ;

boolean_t
spa_guid_exists(uint64_t pool_guid, uint64_t device_guid)
{
 return (spa_by_guid(pool_guid, device_guid) != ((void*)0));
}
