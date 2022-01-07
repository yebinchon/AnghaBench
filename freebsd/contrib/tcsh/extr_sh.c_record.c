
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRsavedirs ;
 int STRsavehist ;
 int * adrof (int ) ;
 int displayHistStats (char*) ;
 int fast ;
 int recdirs (int *,int ) ;
 int rechist (int *,int ) ;

__attribute__((used)) static void
record(void)
{
    if (!fast) {
 recdirs(((void*)0), adrof(STRsavedirs) != ((void*)0));
 rechist(((void*)0), adrof(STRsavehist) != ((void*)0));
    }
    displayHistStats("Exiting");
}
