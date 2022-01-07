
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int frow; int fcol; } ;
typedef TYPE_1__ FIELD ;


 TYPE_1__* Sorted_Next_Field (TYPE_1__*) ;
 TYPE_1__* Sorted_Previous_Field (TYPE_1__*) ;

__attribute__((used)) static FIELD *
Down_Neighbor_Field(FIELD *field)
{
  FIELD *field_on_page = field;
  int frow = field->frow;
  int fcol = field->fcol;





  do
    {
      field_on_page = Sorted_Next_Field(field_on_page);
    }
  while (field_on_page->frow == frow && field_on_page->fcol != fcol);

  if (field_on_page->frow != frow)
    {


      frow = field_on_page->frow;



      while (field_on_page->frow == frow && field_on_page->fcol < fcol)
 field_on_page = Sorted_Next_Field(field_on_page);



      if (field_on_page->frow != frow)
 field_on_page = Sorted_Previous_Field(field_on_page);
    }

  return (field_on_page);
}
