
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_Mutex ;
 int smutex_destroy (int *) ;

void
mi_clean_signals()
{
 (void) smutex_destroy(&M_Mutex);
}
