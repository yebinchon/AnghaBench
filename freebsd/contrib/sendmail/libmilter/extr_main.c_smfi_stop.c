
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MILTER_STOP ;
 int MI_SUCCESS ;
 int mi_stop_milters (int ) ;

int
smfi_stop()
{
 mi_stop_milters(MILTER_STOP);
 return MI_SUCCESS;
}
