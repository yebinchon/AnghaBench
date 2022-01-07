
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct coff_symbol {int c_value; } ;
struct TYPE_3__ {int end; } ;
typedef TYPE_1__ InclTable ;


 int allocate_include_entry () ;
 int complaint (int *,char*) ;
 scalar_t__ inclDepth ;
 size_t inclIndx ;
 TYPE_1__* inclTable ;
 int symfile_complaints ;

__attribute__((used)) static void
record_include_end (struct coff_symbol *cs)
{
  InclTable *pTbl;

  if (inclDepth == 0)
    {
      complaint (&symfile_complaints, "Mismatched C_BINCL/C_EINCL pair");
    }

  allocate_include_entry ();

  pTbl = &inclTable[inclIndx];
  pTbl->end = cs->c_value;

  --inclDepth;
  ++inclIndx;
}
