
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xo_handle_t ;
struct TYPE_4__ {int xe_handler; } ;
typedef TYPE_1__ xo_encoder_node_t ;


 int XO_OP_CREATE ;
 int XO_OP_OPTIONS ;
 char* alloca (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 TYPE_1__* xo_encoder_discover (char const*) ;
 TYPE_1__* xo_encoder_find (char const*) ;
 int xo_encoder_handle (int *,int ,char const*,char const*,int ) ;
 int xo_encoder_setup () ;
 int xo_failure (int *,char*,char const*) ;
 int xo_set_encoder (int *,int ) ;

int
xo_encoder_init (xo_handle_t *xop, const char *name)
{
    xo_encoder_setup();

    const char *opts = strchr(name, ':');
    if (opts) {

 size_t len = strlen(name);
 char *copy = alloca(len + 1);
 memcpy(copy, name, len);
 copy[len] = '\0';

 char *opts_copy = copy + (opts - name);
 *opts_copy++ = '\0';

 opts = opts_copy;
 name = copy;
    }


    if (strchr(name, '/') != ((void*)0) || strchr(name, ':') != ((void*)0)) {
 xo_failure(xop, "invalid encoder name: %s", name);
 return -1;
    }






    xo_encoder_node_t *xep = xo_encoder_find(name);
    if (xep == ((void*)0)) {
 xep = xo_encoder_discover(name);
 if (xep == ((void*)0)) {
     xo_failure(xop, "encoder not founde: %s", name);
     return -1;
 }
    }

    xo_set_encoder(xop, xep->xe_handler);

    int rc = xo_encoder_handle(xop, XO_OP_CREATE, name, ((void*)0), 0);
    if (rc == 0 && opts != ((void*)0)) {
 rc = xo_encoder_handle(xop, XO_OP_OPTIONS, name, opts, 0);
    }

    return rc;
}
