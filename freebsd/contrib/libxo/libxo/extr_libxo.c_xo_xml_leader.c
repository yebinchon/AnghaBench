
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_handle_t ;


 int strlen (char const*) ;
 char const* xo_xml_leader_len (int *,char const*,int ) ;

__attribute__((used)) static const char *
xo_xml_leader (xo_handle_t *xop, const char *name)
{
    return xo_xml_leader_len(xop, name, strlen(name));
}
