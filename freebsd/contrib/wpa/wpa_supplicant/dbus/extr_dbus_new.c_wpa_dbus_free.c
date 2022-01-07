
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (void*) ;

__attribute__((used)) static void wpa_dbus_free(void *ptr)
{
 os_free(ptr);
}
