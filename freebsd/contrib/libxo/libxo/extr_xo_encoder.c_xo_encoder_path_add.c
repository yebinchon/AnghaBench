
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xo_encoder_path ;
 int xo_encoder_setup () ;
 int xo_string_add (int *,char const*) ;

void
xo_encoder_path_add (const char *path)
{
    xo_encoder_setup();

    if (path)
 xo_string_add(&xo_encoder_path, path);
}
