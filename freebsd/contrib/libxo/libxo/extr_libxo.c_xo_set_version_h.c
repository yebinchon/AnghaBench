
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int xo_version; } ;
typedef TYPE_1__ xo_handle_t ;


 int XO_OP_VERSION ;



 int * strchr (char const*,char) ;
 int xo_attr_h (TYPE_1__*,char*,char*,char const*) ;
 TYPE_1__* xo_default (TYPE_1__*) ;
 int xo_encoder_handle (TYPE_1__*,int ,int *,char const*,int ) ;
 int xo_strndup (char const*,int) ;
 int xo_style (TYPE_1__*) ;
 int xo_style_is_encoding (TYPE_1__*) ;

void
xo_set_version_h (xo_handle_t *xop, const char *version)
{
    xop = xo_default(xop);

    if (version == ((void*)0) || strchr(version, '"') != ((void*)0))
 return;

    if (!xo_style_is_encoding(xop))
 return;

    switch (xo_style(xop)) {
    case 128:

 xo_attr_h(xop, "version", "%s", version);
 break;

    case 129:




 xop->xo_version = xo_strndup(version, -1);
 break;

    case 130:
 xo_encoder_handle(xop, XO_OP_VERSION, ((void*)0), version, 0);
 break;
    }
}
