
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_handles; int reader_count; int event_count; int * handles; } ;
typedef int HANDLE ;


 TYPE_1__ eloop ;
 int * os_realloc_array (int *,int,int) ;

__attribute__((used)) static int eloop_prepare_handles(void)
{
 HANDLE *n;

 if (eloop.num_handles > eloop.reader_count + eloop.event_count + 8)
  return 0;
 n = os_realloc_array(eloop.handles, eloop.num_handles * 2,
        sizeof(eloop.handles[0]));
 if (n == ((void*)0))
  return -1;
 eloop.handles = n;
 eloop.num_handles *= 2;
 return 0;
}
