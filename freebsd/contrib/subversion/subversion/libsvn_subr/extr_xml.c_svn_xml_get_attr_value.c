
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const* const,char const*) ;

const char *
svn_xml_get_attr_value(const char *name, const char *const *atts)
{
  while (atts && (*atts))
    {
      if (strcmp(atts[0], name) == 0)
        return atts[1];
      else
        atts += 2;
    }


  return ((void*)0);
}
