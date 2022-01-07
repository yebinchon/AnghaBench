
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ name; } ;
typedef size_t DBDIRS ;


 int FALSE ;
 int TRUE ;
 size_t dbdLAST ;
 scalar_t__ my_time ;
 TYPE_1__* my_vars ;
 scalar_t__ time (scalar_t__*) ;
 scalar_t__ update_getenv (scalar_t__,size_t) ;

__attribute__((used)) static bool
cache_expired(void)
{
    bool result = FALSE;
    time_t now = time((time_t *) 0);

    if (now > my_time) {
 result = TRUE;
    } else {
 DBDIRS n;
 for (n = (DBDIRS) 0; n < dbdLAST; ++n) {
     if (my_vars[n].name != 0
  && update_getenv(my_vars[n].name, n)) {
  result = TRUE;
  break;
     }
 }
    }
    return result;
}
