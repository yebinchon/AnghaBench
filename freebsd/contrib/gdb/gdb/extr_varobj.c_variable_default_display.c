
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
typedef enum varobj_display_formats { ____Placeholder_varobj_display_formats } varobj_display_formats ;


 int FORMAT_NATURAL ;

__attribute__((used)) static enum varobj_display_formats
variable_default_display (struct varobj *var)
{
  return FORMAT_NATURAL;
}
