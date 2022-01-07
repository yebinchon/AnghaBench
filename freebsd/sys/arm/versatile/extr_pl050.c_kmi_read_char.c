
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int keyboard_t ;


 int KMI_LOCK () ;
 int KMI_UNLOCK () ;
 int kmi_read_char_locked (int *,int) ;

__attribute__((used)) static uint32_t
kmi_read_char(keyboard_t *kbd, int wait)
{
 uint32_t keycode;

 KMI_LOCK();
 keycode = kmi_read_char_locked(kbd, wait);
 KMI_UNLOCK();

 return (keycode);
}
