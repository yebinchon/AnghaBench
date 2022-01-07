
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;


 scalar_t__ variable_editable (struct varobj*) ;

int
varobj_get_attributes (struct varobj *var)
{
  int attributes = 0;

  if (variable_editable (var))

    attributes |= 0x00000001;

  return attributes;
}
