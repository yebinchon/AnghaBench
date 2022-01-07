
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _nc_warning (char*) ;
 int dp ;
 int onstack ;
 int push () ;
 int save_char (int ,int) ;
 int save_string (int ,char*) ;
 scalar_t__ seenm ;
 scalar_t__ seenn ;
 scalar_t__ seenr ;

__attribute__((used)) static void
getparm(int parm, int n)

{
    if (seenr) {
 if (parm == 1)
     parm = 2;
 else if (parm == 2)
     parm = 1;
    }

    while (n--) {
 dp = save_string(dp, "%p");
 dp = save_char(dp, '0' + parm);
    }

    if (onstack == parm) {
 if (n > 1) {
     _nc_warning("string may not be optimal");
     dp = save_string(dp, "%Pa");
     while (n--) {
  dp = save_string(dp, "%ga");
     }
 }
 return;
    }
    if (onstack != 0)
 push();

    onstack = parm;

    if (seenn && parm < 3) {
 dp = save_string(dp, "%{96}%^");
    }

    if (seenm && parm < 3) {
 dp = save_string(dp, "%{127}%^");
    }
}
