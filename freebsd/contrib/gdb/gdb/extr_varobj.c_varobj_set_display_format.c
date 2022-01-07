
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int format; } ;
typedef enum varobj_display_formats { ____Placeholder_varobj_display_formats } varobj_display_formats ;







 int variable_default_display (struct varobj*) ;

enum varobj_display_formats
varobj_set_display_format (struct varobj *var,
      enum varobj_display_formats format)
{
  switch (format)
    {
    case 129:
    case 132:
    case 131:
    case 130:
    case 128:
      var->format = format;
      break;

    default:
      var->format = variable_default_display (var);
    }

  return var->format;
}
