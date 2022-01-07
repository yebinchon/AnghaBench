
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int FSEv06_DTable ;


 int FSEv06_DTABLE_SIZE_U32 (unsigned int) ;
 unsigned int FSEv06_TABLELOG_ABSOLUTE_MAX ;
 scalar_t__ malloc (int) ;

FSEv06_DTable* FSEv06_createDTable (unsigned tableLog)
{
    if (tableLog > FSEv06_TABLELOG_ABSOLUTE_MAX) tableLog = FSEv06_TABLELOG_ABSOLUTE_MAX;
    return (FSEv06_DTable*)malloc( FSEv06_DTABLE_SIZE_U32(tableLog) * sizeof (U32) );
}
