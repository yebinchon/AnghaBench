
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;


 int REGIONAL_CHUNK_SIZE ;
 struct regional* regional_create_custom (int ) ;

struct regional*
regional_create(void)
{
 return regional_create_custom(REGIONAL_CHUNK_SIZE);
}
