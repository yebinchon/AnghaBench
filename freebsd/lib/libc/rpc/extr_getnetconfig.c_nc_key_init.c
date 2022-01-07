
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free ;
 int nc_key ;
 int nc_key_error ;
 int thr_keycreate (int *,int ) ;

__attribute__((used)) static void
nc_key_init(void)
{

 nc_key_error = thr_keycreate(&nc_key, free);
}
