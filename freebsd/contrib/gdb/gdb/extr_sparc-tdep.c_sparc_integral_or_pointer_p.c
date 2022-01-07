
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_CODE (struct type const*) ;







 int TYPE_LENGTH (struct type const*) ;

__attribute__((used)) static int
sparc_integral_or_pointer_p (const struct type *type)
{
  switch (TYPE_CODE (type))
    {
    case 131:
    case 134:
    case 133:
    case 132:
    case 129:
      {



 int len = TYPE_LENGTH (type);
 return (len == 1 || len == 2 || len == 4 || len == 8);
      }
      return 1;
    case 130:
    case 128:
      {

 int len = TYPE_LENGTH (type);
 return (len == 4 || len == 8);
      }
      return 1;
    default:
      break;
    }

  return 0;
}
