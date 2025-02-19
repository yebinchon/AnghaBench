
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asprintf (char**,char*,char const*) ;
 int err (int,char*,char*) ;
 int errx (int,char*) ;
 void* fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int fputs (char*,int *) ;
 int free (char*) ;
 char* header ;
 char* headerbase ;
 int * headerfile ;
 int * logfile ;
 scalar_t__ one_code_file ;
 char const* orig_filename ;
 char* privheader ;
 int * privheaderfile ;
 char* strdup (char const*) ;
 char* template ;
 int * templatefile ;

void
init_generate (const char *filename, const char *base)
{
    char *fn = ((void*)0);

    orig_filename = filename;
    if (base != ((void*)0)) {
 headerbase = strdup(base);
 if (headerbase == ((void*)0))
     errx(1, "strdup");
    }


    if (asprintf(&header, "%s.h", headerbase) < 0 || header == ((void*)0))
 errx(1, "malloc");
    if (asprintf(&fn, "%s.hx", headerbase) < 0 || fn == ((void*)0))
 errx(1, "malloc");
    headerfile = fopen (fn, "w");
    if (headerfile == ((void*)0))
 err (1, "open %s", fn);
    free(fn);
    fn = ((void*)0);


    if (asprintf(&privheader, "%s-priv.h", headerbase) < 0 || privheader == ((void*)0))
 errx(1, "malloc");
    if (asprintf(&fn, "%s-priv.hx", headerbase) < 0 || fn == ((void*)0))
 errx(1, "malloc");
    privheaderfile = fopen (fn, "w");
    if (privheaderfile == ((void*)0))
 err (1, "open %s", fn);
    free(fn);
    fn = ((void*)0);


    if (asprintf(&template, "%s-template.c", headerbase) < 0 || template == ((void*)0))
 errx(1, "malloc");
    fprintf (headerfile,
      "/* Generated from %s */\n"
      "/* Do not edit */\n\n",
      filename);
    fprintf (headerfile,
      "#ifndef __%s_h__\n"
      "#define __%s_h__\n\n", headerbase, headerbase);
    fprintf (headerfile,
      "#include <stddef.h>\n"
      "#include <time.h>\n\n");
    fprintf (headerfile,
      "#ifndef __asn1_common_definitions__\n"
      "#define __asn1_common_definitions__\n\n");
    fprintf (headerfile,
      "typedef struct heim_integer {\n"
      "  size_t length;\n"
      "  void *data;\n"
      "  int negative;\n"
      "} heim_integer;\n\n");
    fprintf (headerfile,
      "typedef struct heim_octet_string {\n"
      "  size_t length;\n"
      "  void *data;\n"
      "} heim_octet_string;\n\n");
    fprintf (headerfile,
      "typedef char *heim_general_string;\n\n"
      );
    fprintf (headerfile,
      "typedef char *heim_utf8_string;\n\n"
      );
    fprintf (headerfile,
      "typedef struct heim_octet_string heim_printable_string;\n\n"
      );
    fprintf (headerfile,
      "typedef struct heim_octet_string heim_ia5_string;\n\n"
      );
    fprintf (headerfile,
      "typedef struct heim_bmp_string {\n"
      "  size_t length;\n"
      "  uint16_t *data;\n"
      "} heim_bmp_string;\n\n");
    fprintf (headerfile,
      "typedef struct heim_universal_string {\n"
      "  size_t length;\n"
      "  uint32_t *data;\n"
      "} heim_universal_string;\n\n");
    fprintf (headerfile,
      "typedef char *heim_visible_string;\n\n"
      );
    fprintf (headerfile,
      "typedef struct heim_oid {\n"
      "  size_t length;\n"
      "  unsigned *components;\n"
      "} heim_oid;\n\n");
    fprintf (headerfile,
      "typedef struct heim_bit_string {\n"
      "  size_t length;\n"
      "  void *data;\n"
      "} heim_bit_string;\n\n");
    fprintf (headerfile,
      "typedef struct heim_octet_string heim_any;\n"
      "typedef struct heim_octet_string heim_any_set;\n\n");
    fputs("#define ASN1_MALLOC_ENCODE(T, B, BL, S, L, R)                  \\\n"
   "  do {                                                         \\\n"
   "    (BL) = length_##T((S));                                    \\\n"
   "    (B) = malloc((BL));                                        \\\n"
   "    if((B) == NULL) {                                          \\\n"
   "      (R) = ENOMEM;                                            \\\n"
   "    } else {                                                   \\\n"
   "      (R) = encode_##T(((unsigned char*)(B)) + (BL) - 1, (BL), \\\n"
   "                       (S), (L));                              \\\n"
   "      if((R) != 0) {                                           \\\n"
   "        free((B));                                             \\\n"
   "        (B) = NULL;                                            \\\n"
   "      }                                                        \\\n"
   "    }                                                          \\\n"
   "  } while (0)\n\n",
   headerfile);
    fputs("#ifdef _WIN32\n"
   "#ifndef ASN1_LIB\n"
   "#define ASN1EXP  __declspec(dllimport)\n"
   "#else\n"
   "#define ASN1EXP\n"
   "#endif\n"
   "#define ASN1CALL __stdcall\n"
   "#else\n"
   "#define ASN1EXP\n"
   "#define ASN1CALL\n"
   "#endif\n",
   headerfile);
    fprintf (headerfile, "struct units;\n\n");
    fprintf (headerfile, "#endif\n\n");
    if (asprintf(&fn, "%s_files", base) < 0 || fn == ((void*)0))
 errx(1, "malloc");
    logfile = fopen(fn, "w");
    if (logfile == ((void*)0))
 err (1, "open %s", fn);


    if (one_code_file)
 return;

    templatefile = fopen (template, "w");
    if (templatefile == ((void*)0))
 err (1, "open %s", template);

    fprintf (templatefile,
      "/* Generated from %s */\n"
      "/* Do not edit */\n\n"
      "#include <stdio.h>\n"
      "#include <stdlib.h>\n"
      "#include <time.h>\n"
      "#include <string.h>\n"
      "#include <errno.h>\n"
      "#include <limits.h>\n"
      "#include <krb5-types.h>\n",
      filename);

    fprintf (templatefile,
      "#include <%s>\n"
      "#include <%s>\n"
      "#include <der.h>\n"
      "#include <der-private.h>\n"
      "#include <asn1-template.h>\n",
      header, privheader);


}
