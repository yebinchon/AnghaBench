
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int InclTable ;


 int INITIAL_INCLUDE_TABLE_LENGTH ;
 int inclIndx ;
 int inclLength ;
 int * inclTable ;
 int memset (int *,char,int) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (int *,int) ;

__attribute__((used)) static void
allocate_include_entry (void)
{
  if (inclTable == ((void*)0))
    {
      inclTable = (InclTable *)
 xmalloc (sizeof (InclTable) * INITIAL_INCLUDE_TABLE_LENGTH);
      memset (inclTable,
       '\0', sizeof (InclTable) * INITIAL_INCLUDE_TABLE_LENGTH);
      inclLength = INITIAL_INCLUDE_TABLE_LENGTH;
      inclIndx = 0;
    }
  else if (inclIndx >= inclLength)
    {
      inclLength += INITIAL_INCLUDE_TABLE_LENGTH;
      inclTable = (InclTable *)
 xrealloc (inclTable, sizeof (InclTable) * inclLength);
      memset (inclTable + inclLength - INITIAL_INCLUDE_TABLE_LENGTH,
       '\0', sizeof (InclTable) * INITIAL_INCLUDE_TABLE_LENGTH);
    }
}
