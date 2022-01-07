
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free ;
 int rce_key ;
 int rce_key_error ;
 int thr_keycreate (int *,int ) ;

__attribute__((used)) static void
rce_key_init(void)
{

 rce_key_error = thr_keycreate(&rce_key, free);
}
