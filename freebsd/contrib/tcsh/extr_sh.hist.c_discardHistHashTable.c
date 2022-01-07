
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int displayHistStats (char*) ;
 int * histHashTable ;
 int xfree (int *) ;

__attribute__((used)) static void
discardHistHashTable(void)
{
    if (histHashTable == ((void*)0))
        return;
    displayHistStats("Discarding");
    xfree(histHashTable);
    histHashTable = ((void*)0);
}
