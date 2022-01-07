
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pd_name; char* pd_colname; } ;
typedef TYPE_1__ zprop_desc_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 char const tolower (char const) ;

__attribute__((used)) static boolean_t
propname_match(const char *p, size_t len, zprop_desc_t *prop_entry)
{
 const char *propname = prop_entry->pd_name;

 const char *colname = prop_entry->pd_colname;
 int c;


 if (len == strlen(propname) &&
     strncmp(p, propname, len) == 0)
  return (B_TRUE);


 if (colname == ((void*)0) || len != strlen(colname))
  return (B_FALSE);

 for (c = 0; c < len; c++)
  if (p[c] != tolower(colname[c]))
   break;

 return (colname[c] == '\0');



}
