
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XO_STYLE_ENCODER ;
 int XO_STYLE_HTML ;
 int XO_STYLE_JSON ;
 int XO_STYLE_SDPARAMS ;
 int XO_STYLE_TEXT ;
 int XO_STYLE_XML ;
 scalar_t__ xo_streq (char const*,char*) ;

__attribute__((used)) static int
xo_name_to_style (const char *name)
{
    if (xo_streq(name, "xml"))
 return XO_STYLE_XML;
    else if (xo_streq(name, "json"))
 return XO_STYLE_JSON;
    else if (xo_streq(name, "encoder"))
 return XO_STYLE_ENCODER;
    else if (xo_streq(name, "text"))
 return XO_STYLE_TEXT;
    else if (xo_streq(name, "html"))
 return XO_STYLE_HTML;
    else if (xo_streq(name, "sdparams"))
 return XO_STYLE_SDPARAMS;

    return -1;
}
