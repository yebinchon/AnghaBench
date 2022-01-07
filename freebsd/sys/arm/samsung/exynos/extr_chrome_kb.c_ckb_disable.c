
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int CKB_LOCK () ;
 int CKB_UNLOCK () ;
 int KBD_DEACTIVATE (int *) ;

__attribute__((used)) static int
ckb_disable(keyboard_t *kbd)
{

 CKB_LOCK();
 KBD_DEACTIVATE(kbd);
 CKB_UNLOCK();

 return (0);
}
