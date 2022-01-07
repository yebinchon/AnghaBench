
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* DRILL_VERSION ;
 int fprintf (int *,char*,...) ;
 char* ldns_version () ;

__attribute__((used)) static void
version(FILE *stream, const char *progname)
{
        fprintf(stream, "%s version %s (ldns version %s)\n", progname, DRILL_VERSION, ldns_version());
        fprintf(stream, "Written by NLnet Labs.\n");
        fprintf(stream, "\nCopyright (c) 2004-2008 NLnet Labs.\n");
        fprintf(stream, "Licensed under the revised BSD license.\n");
        fprintf(stream, "There is NO warranty; not even for MERCHANTABILITY or FITNESS\n");
        fprintf(stream, "FOR A PARTICULAR PURPOSE.\n");
}
