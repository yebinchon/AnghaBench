
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ABSENT_STRING ;
 char* CANCELLED_STRING ;
 int TRACE_OUT (char*) ;
 int _nc_visbuf (char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
compute_offsets(char **Strings, size_t strmax, short *offsets)
{
    int nextfree = 0;
    size_t i;

    for (i = 0; i < strmax; i++) {
 if (Strings[i] == ABSENT_STRING) {
     offsets[i] = -1;
 } else if (Strings[i] == CANCELLED_STRING) {
     offsets[i] = -2;
 } else {
     offsets[i] = (short) nextfree;
     nextfree += (int) strlen(Strings[i]) + 1;
     TRACE_OUT(("put Strings[%d]=%s(%d)", (int) i,
         _nc_visbuf(Strings[i]), (int) nextfree));
 }
    }
    return nextfree;
}
