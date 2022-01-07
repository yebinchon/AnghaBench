
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_handle_t ;


 int XOF_ISSET (int *,int ) ;
 int XOF_NO_ENV ;
 char* getenv (char*) ;
 int xo_default_handle ;
 int xo_default_inited ;
 int xo_init_handle (int *) ;
 int xo_set_options_simple (int *,char*) ;

__attribute__((used)) static void
xo_default_init (void)
{
    xo_handle_t *xop = &xo_default_handle;

    xo_init_handle(xop);


    if (!XOF_ISSET(xop, XOF_NO_ENV)) {
       char *env = getenv("LIBXO_OPTIONS");

       if (env)
           xo_set_options_simple(xop, env);

    }


    xo_default_inited = 1;
}
