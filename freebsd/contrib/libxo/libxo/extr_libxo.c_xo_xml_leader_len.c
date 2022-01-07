
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_ssize_t ;
typedef int xo_handle_t ;


 scalar_t__ isalpha (char const) ;
 int xo_failure (int *,char*,int ,char const*) ;

__attribute__((used)) static const char *
xo_xml_leader_len (xo_handle_t *xop, const char *name, xo_ssize_t nlen)
{
    if (name == ((void*)0) || isalpha(name[0]) || name[0] == '_')
        return "";

    xo_failure(xop, "invalid XML tag name: '%.*s'", nlen, name);
    return "_";
}
