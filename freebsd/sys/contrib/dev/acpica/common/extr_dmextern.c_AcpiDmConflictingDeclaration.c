
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
AcpiDmConflictingDeclaration (
    char *Path)
{
    fprintf (stderr,
        " Warning - Emitting ASL code \"External (%s)\"\n"
        "           This is a conflicting declaration with some "
        "other declaration within the ASL code.\n"
        "           This external declaration may need to be "
        "deleted in order to recompile the dsl file.\n\n",
        Path);
}
