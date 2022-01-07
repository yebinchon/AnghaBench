
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int keyboard_t ;


 int CKB_LOCK () ;
 int CKB_UNLOCK () ;
 int ckb_read_char_locked (int *,int) ;

__attribute__((used)) static uint32_t
ckb_read_char(keyboard_t *kbd, int wait)
{
 uint32_t keycode;

 CKB_LOCK();
 keycode = ckb_read_char_locked(kbd, wait);
 CKB_UNLOCK();

 return (keycode);
}
