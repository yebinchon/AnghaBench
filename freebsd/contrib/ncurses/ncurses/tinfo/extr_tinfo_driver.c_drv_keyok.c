
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int _key_ok; int _keytry; } ;
typedef int TERMINAL_CONTROL_BLOCK ;
typedef TYPE_1__ SCREEN ;


 int AssertTCB () ;
 int ERR ;
 int OK ;
 int SetSP () ;
 int _nc_add_to_try (int *,char*,unsigned int) ;
 char* _nc_expand_try (int ,unsigned int,int*,size_t) ;
 scalar_t__ _nc_remove_key (int *,unsigned int) ;
 int free (char*) ;

__attribute__((used)) static int
drv_keyok(TERMINAL_CONTROL_BLOCK * TCB, int c, int flag)
{
    SCREEN *sp;
    int code = ERR;
    int count = 0;
    char *s;

    AssertTCB();
    SetSP();

    if (c >= 0) {
 unsigned ch = (unsigned) c;
 if (flag) {
     while ((s = _nc_expand_try(sp->_key_ok,
           ch, &count, (size_t) 0)) != 0
     && _nc_remove_key(&(sp->_key_ok), ch)) {
  code = _nc_add_to_try(&(sp->_keytry), s, ch);
  free(s);
  count = 0;
  if (code != OK)
      break;
     }
 } else {
     while ((s = _nc_expand_try(sp->_keytry,
           ch, &count, (size_t) 0)) != 0
     && _nc_remove_key(&(sp->_keytry), ch)) {
  code = _nc_add_to_try(&(sp->_key_ok), s, ch);
  free(s);
  count = 0;
  if (code != OK)
      break;
     }
 }
    }
    return (code);
}
