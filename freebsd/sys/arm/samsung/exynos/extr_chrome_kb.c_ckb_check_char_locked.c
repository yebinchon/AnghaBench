
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int CKB_CTX_LOCK_ASSERT () ;
 int KBD_IS_ACTIVE (int *) ;
 int ckb_check (int *) ;

__attribute__((used)) static int
ckb_check_char_locked(keyboard_t *kbd)
{
 CKB_CTX_LOCK_ASSERT();

 if (!KBD_IS_ACTIVE(kbd))
  return (0);

 return (ckb_check(kbd));
}
