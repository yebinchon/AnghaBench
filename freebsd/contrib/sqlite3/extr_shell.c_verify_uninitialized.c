
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SQLITE_MISUSE ;
 scalar_t__ sqlite3_config (int) ;
 int stdout ;
 int utf8_printf (int ,char*) ;

__attribute__((used)) static void verify_uninitialized(void){
  if( sqlite3_config(-1)==SQLITE_MISUSE ){
    utf8_printf(stdout, "WARNING: attempt to configure SQLite after"
                        " initialization.\n");
  }
}
