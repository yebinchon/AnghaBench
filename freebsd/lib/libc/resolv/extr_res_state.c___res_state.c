
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* res_state ;
struct TYPE_10__ {int options; } ;


 int RES_TIMEOUT ;
 TYPE_1__ _res ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 TYPE_1__* res_check_reload (TYPE_1__*) ;
 int res_init_once ;
 int res_key ;
 int res_keycreate ;
 int res_thr_keycreated ;
 TYPE_1__* thr_getspecific (int ) ;
 scalar_t__ thr_main () ;
 scalar_t__ thr_once (int *,int ) ;
 scalar_t__ thr_setspecific (int ,TYPE_1__*) ;

res_state
__res_state(void)
{
 res_state statp;

 if (thr_main() != 0)
  return res_check_reload(&_res);

 if (thr_once(&res_init_once, res_keycreate) != 0 ||
     !res_thr_keycreated)
  return (&_res);

 statp = thr_getspecific(res_key);
 if (statp != ((void*)0))
  return res_check_reload(statp);
 statp = calloc(1, sizeof(*statp));
 if (statp == ((void*)0))
  return (&_res);



 if (thr_setspecific(res_key, statp) == 0)
  return (statp);
 free(statp);
 return (&_res);
}
