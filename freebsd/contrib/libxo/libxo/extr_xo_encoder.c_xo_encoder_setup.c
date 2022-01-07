
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XO_ENCODERDIR ;
 int xo_encoder_list_init (int *) ;
 int xo_encoder_path ;
 int xo_encoder_path_add (int ) ;
 int xo_encoders ;
 int xo_string_list_init (int *) ;

__attribute__((used)) static void
xo_encoder_setup (void)
{
    static int initted;
    if (!initted) {
 initted = 1;

 xo_string_list_init(&xo_encoder_path);
 xo_encoder_list_init(&xo_encoders);

 xo_encoder_path_add(XO_ENCODERDIR);
    }
}
