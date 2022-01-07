
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int CKB_LOCK () ;
 int CKB_UNLOCK () ;
 int ckb_check_char_locked (int *) ;

__attribute__((used)) static int
ckb_check_char(keyboard_t *kbd)
{
 int result;

 CKB_LOCK();
 result = ckb_check_char_locked(kbd);
 CKB_UNLOCK();

 return (result);
}
