
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dcons_checkc (int *) ;
 int fw_poll () ;
 int * sc ;

__attribute__((used)) static int
dconsole_getchar(void)
{
    fw_poll();
    return (dcons_checkc(&sc[0]));
}
