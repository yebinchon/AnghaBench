
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct import {char const* module; struct import* next; } ;


 struct import* emalloc (int) ;
 int fprintf (int ,char*,char const*) ;
 int headerfile ;
 struct import* imports ;

void
add_import (const char *module)
{
    struct import *tmp = emalloc (sizeof(*tmp));

    tmp->module = module;
    tmp->next = imports;
    imports = tmp;

    fprintf (headerfile, "#include <%s_asn1.h>\n", module);
}
