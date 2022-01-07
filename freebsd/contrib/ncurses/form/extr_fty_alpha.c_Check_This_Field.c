
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; } ;
typedef TYPE_1__ thisARG ;
typedef int FIELD ;


 int Check_CTYPE_Field (int,unsigned char*,int,int ) ;
 int Check_This_Character ;
 scalar_t__ field_buffer (int *,int ) ;

__attribute__((used)) static bool
Check_This_Field(FIELD *field, const void *argp)
{
  int width = ((const thisARG *)argp)->width;
  unsigned char *bp = (unsigned char *)field_buffer(field, 0);
  bool result = (width < 0);

  Check_CTYPE_Field(result, bp, width, Check_This_Character);
  return (result);
}
