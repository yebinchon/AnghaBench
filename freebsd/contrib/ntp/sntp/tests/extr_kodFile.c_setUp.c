
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_lib () ;
 int * kod_db ;
 scalar_t__ kod_db_cnt ;

void
setUp(void) {
 kod_db_cnt = 0;
 kod_db = ((void*)0);
 init_lib();
}
