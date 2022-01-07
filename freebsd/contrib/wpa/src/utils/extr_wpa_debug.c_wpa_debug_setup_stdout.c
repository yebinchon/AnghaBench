
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _IOLBF ;
 int setvbuf (int ,int *,int ,int ) ;
 int stdout ;

void wpa_debug_setup_stdout(void)
{

 setvbuf(stdout, ((void*)0), _IOLBF, 0);

}
