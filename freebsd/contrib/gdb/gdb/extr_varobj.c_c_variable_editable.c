
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;


 int TYPE_CODE (int ) ;






 int get_type (struct varobj*) ;

__attribute__((used)) static int
c_variable_editable (struct varobj *var)
{
  switch (TYPE_CODE (get_type (var)))
    {
    case 129:
    case 128:
    case 133:
    case 132:
    case 131:
    case 130:
      return 0;
      break;

    default:
      return 1;
      break;
    }
}
