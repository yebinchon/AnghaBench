
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;


 int KBD_DEACTIVATE (int *) ;
 int KMI_LOCK () ;
 int KMI_UNLOCK () ;

__attribute__((used)) static int
kmi_disable(keyboard_t *kbd)
{

 KMI_LOCK();
 KBD_DEACTIVATE(kbd);
 KMI_UNLOCK();

 return (0);
}
