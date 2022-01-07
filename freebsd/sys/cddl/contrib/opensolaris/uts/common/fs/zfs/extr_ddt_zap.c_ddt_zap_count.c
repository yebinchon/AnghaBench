
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;


 int zap_count (int *,int ,int *) ;

__attribute__((used)) static int
ddt_zap_count(objset_t *os, uint64_t object, uint64_t *count)
{

 return (zap_count(os, object, count));
}
