
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int FILE ;


 int fprintf (int ,char*,char*,char*,...) ;
 int stderr ;

__attribute__((used)) static int
DtEmitDefinitionBlock (
    FILE *File,
    char *Filename,
    char *Signature,
    UINT32 Instance)
{
    int Status;


    Status = fprintf (File,
        "DefinitionBlock (\"\", \"%4.4s\", 2, \"Intel\", \"_%4.4s_%.2X\", 0x00000001)\n"
        "{\n"
        "    Method (%2.2s%.2X)\n"
        "    {\n"
        "    }\n"
        "}\n\n",
        Signature, Signature, Instance, Signature, Instance);

    if (Status < 0)
    {
        fprintf (stderr,
            "Could not write %4.4s to output file %s\n",
            Signature, Filename);
    }

    return (Status);
}
