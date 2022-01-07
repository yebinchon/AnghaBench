
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STEM ;
 int abort () ;
 scalar_t__ asprintf (char**,char*,int ,char const*) ;
 int * codefile ;
 int err (int,char*,char*) ;
 int errx (int,char*) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int free (char*) ;
 char* header ;
 int logfile ;
 char* orig_filename ;
 char* privheader ;

void
generate_header_of_codefile(const char *name)
{
    char *filename = ((void*)0);

    if (codefile != ((void*)0))
 abort();

    if (asprintf (&filename, "%s_%s.x", STEM, name) < 0 || filename == ((void*)0))
 errx(1, "malloc");
    codefile = fopen (filename, "w");
    if (codefile == ((void*)0))
 err (1, "fopen %s", filename);
    fprintf(logfile, "%s ", filename);
    free(filename);
    filename = ((void*)0);
    fprintf (codefile,
      "/* Generated from %s */\n"
      "/* Do not edit */\n\n"
      "#define  ASN1_LIB\n\n"
      "#include <stdio.h>\n"
      "#include <stdlib.h>\n"
      "#include <time.h>\n"
      "#include <string.h>\n"
      "#include <errno.h>\n"
      "#include <limits.h>\n"
      "#include <krb5-types.h>\n",
      orig_filename);

    fprintf (codefile,
      "#include <%s>\n"
      "#include <%s>\n",
      header, privheader);
    fprintf (codefile,
      "#include <asn1_err.h>\n"
      "#include <der.h>\n"
      "#include <der-private.h>\n"
      "#include <asn1-template.h>\n"
      "#include <parse_units.h>\n\n");

}
