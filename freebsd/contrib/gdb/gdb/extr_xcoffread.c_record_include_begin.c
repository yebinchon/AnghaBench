
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coff_symbol {int c_value; int c_name; } ;
struct TYPE_2__ {int begin; int name; } ;


 int allocate_include_entry () ;
 int complaint (int *,char*) ;
 scalar_t__ inclDepth ;
 size_t inclIndx ;
 TYPE_1__* inclTable ;
 int symfile_complaints ;

__attribute__((used)) static void
record_include_begin (struct coff_symbol *cs)
{
  if (inclDepth)
    {






      complaint (&symfile_complaints, "Nested C_BINCL symbols");
    }
  ++inclDepth;

  allocate_include_entry ();

  inclTable[inclIndx].name = cs->c_name;
  inclTable[inclIndx].begin = cs->c_value;
}
