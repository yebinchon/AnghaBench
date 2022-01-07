
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uint32_t ;


 int bzero (int *,int) ;
 int uuid_s_ok ;

void
uuid_create_nil(uuid_t *u, uint32_t *status)
{

 if (status)
  *status = uuid_s_ok;

 bzero(u, sizeof(*u));
}
