
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;

__attribute__((used)) static void
set_query_attr(char **attr, char **val)
{

 free(*attr);
 if (**val == '\0') {
  *attr = ((void*)0);
  free(*val);
 } else
  *attr = *val;
 *val = ((void*)0);
}
