
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int KMI_LOCK () ;
 int KMI_UNLOCK () ;
 int kmi_check_char_locked (int *) ;

__attribute__((used)) static int
kmi_check_char(keyboard_t *kbd)
{
 int result;

 KMI_LOCK();
 result = kmi_check_char_locked(kbd);
 KMI_UNLOCK();

 return (result);
}
