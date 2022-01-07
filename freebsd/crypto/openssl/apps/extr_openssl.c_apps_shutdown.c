
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_prefix_method () ;
 int destroy_ui_method () ;

__attribute__((used)) static void apps_shutdown(void)
{
    destroy_ui_method();
    destroy_prefix_method();
}
