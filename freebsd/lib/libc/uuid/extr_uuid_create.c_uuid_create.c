
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uint32_t ;


 int uuid_s_ok ;
 int uuidgen (int *,int) ;

void
uuid_create(uuid_t *u, uint32_t *status)
{

 if (status)
  *status = uuid_s_ok;

 uuidgen(u, 1);
}
