
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMTYPE ;


 scalar_t__ PRESENT (char*) ;
 char* TPARM_9 (int ,int,int,int,int,int,int,int,int,int) ;
 scalar_t__ _nc_capcmp (char*,char*) ;
 scalar_t__ _nc_tparm_err ;
 int _nc_visbuf2 (int,char*) ;
 int _nc_warning (char*,...) ;
 int set_attributes ;
 int similar_sgr (int,char*,char*) ;

__attribute__((used)) static char *
check_sgr(TERMTYPE *tp, char *zero, int num, char *cap, const char *name)
{
    char *test;

    _nc_tparm_err = 0;
    test = TPARM_9(set_attributes,
     num == 1,
     num == 2,
     num == 3,
     num == 4,
     num == 5,
     num == 6,
     num == 7,
     num == 8,
     num == 9);
    if (test != 0) {
 if (PRESENT(cap)) {
     if (!similar_sgr(num, test, cap)) {
  _nc_warning("%s differs from sgr(%d)\n\t%s=%s\n\tsgr(%d)=%s",
       name, num,
       name, _nc_visbuf2(1, cap),
       num, _nc_visbuf2(2, test));
     }
 } else if (_nc_capcmp(test, zero)) {
     _nc_warning("sgr(%d) present, but not %s", num, name);
 }
    } else if (PRESENT(cap)) {
 _nc_warning("sgr(%d) missing, but %s present", num, name);
    }
    if (_nc_tparm_err)
 _nc_warning("stack error in sgr(%d) string", num);
    return test;
}
