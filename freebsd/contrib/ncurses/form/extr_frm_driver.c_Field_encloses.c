
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frow; int rows; int fcol; int cols; } ;
typedef TYPE_1__ FIELD ;


 int E_INVALID_FIELD ;
 int E_OK ;
 int RETURN (int ) ;
 int T (int ) ;
 int T_CALLED (char*) ;

__attribute__((used)) static int
Field_encloses(FIELD *field, int ry, int rx)
{
  T((T_CALLED("Field_encloses(%p)"), (void *)field));
  if (field != 0
      && field->frow <= ry
      && (field->frow + field->rows) > ry
      && field->fcol <= rx
      && (field->fcol + field->cols) > rx)
    {
      RETURN(E_OK);
    }
  RETURN(E_INVALID_FIELD);
}
