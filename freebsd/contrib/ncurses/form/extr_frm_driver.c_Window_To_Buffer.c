
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
typedef int FORM ;
typedef TYPE_1__ FIELD ;


 int _nc_get_fieldbuffer (int *,TYPE_1__*,int ) ;

__attribute__((used)) static void
Window_To_Buffer(FORM *form, FIELD *field)
{
  _nc_get_fieldbuffer(form, field, field->buf);
}
