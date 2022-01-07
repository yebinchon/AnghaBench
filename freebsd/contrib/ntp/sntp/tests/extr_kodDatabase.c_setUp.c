
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int init_lib () ;
 int kod_init_kod_db (char*,int ) ;

void
setUp(void) {
 kod_init_kod_db("/dev/null", TRUE);
 init_lib();
}
