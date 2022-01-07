
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err_free_strings_int () ;
 int fprintf (int ,char*) ;
 scalar_t__ ssl_base_inited ;
 int ssl_comp_free_compression_methods_int () ;
 scalar_t__ ssl_strings_inited ;
 int stderr ;
 int stopped ;

__attribute__((used)) static void ssl_library_stop(void)
{

    if (stopped)
        return;
    stopped = 1;

    if (ssl_base_inited) {





        ssl_comp_free_compression_methods_int();

    }

    if (ssl_strings_inited) {
        err_free_strings_int();
    }
}
