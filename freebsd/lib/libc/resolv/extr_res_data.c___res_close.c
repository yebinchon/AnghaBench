
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _res ;
 int res_nclose (int *) ;

void
res_close(void) {
 res_nclose(&_res);
}
