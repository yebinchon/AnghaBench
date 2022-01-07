
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct type {int dummy; } ;


 scalar_t__ CPLUS_FAKE_CHILD (struct varobj*) ;
 int TYPE_CODE (struct type*) ;



 struct type* get_type (struct varobj*) ;

__attribute__((used)) static int
type_changeable (struct varobj *var)
{
  int r;
  struct type *type;

  if (CPLUS_FAKE_CHILD (var))
    return 0;

  type = get_type (var);

  switch (TYPE_CODE (type))
    {
    case 129:
    case 128:
    case 130:
      r = 0;
      break;

    default:
      r = 1;
    }

  return r;
}
