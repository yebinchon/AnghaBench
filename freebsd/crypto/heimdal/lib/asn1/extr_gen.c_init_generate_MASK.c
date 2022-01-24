#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 void* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* header ; 
 char* headerbase ; 
 int /*<<< orphan*/ * headerfile ; 
 int /*<<< orphan*/ * logfile ; 
 scalar_t__ one_code_file ; 
 char const* orig_filename ; 
 char* privheader ; 
 int /*<<< orphan*/ * privheaderfile ; 
 char* FUNC7 (char const*) ; 
 char* template ; 
 int /*<<< orphan*/ * templatefile ; 

void
FUNC8 (const char *filename, const char *base)
{
    char *fn = NULL;

    orig_filename = filename;
    if (base != NULL) {
	headerbase = FUNC7(base);
	if (headerbase == NULL)
	    FUNC2(1, "strdup");
    }

    /* public header file */
    if (FUNC0(&header, "%s.h", headerbase) < 0 || header == NULL)
	FUNC2(1, "malloc");
    if (FUNC0(&fn, "%s.hx", headerbase) < 0 || fn == NULL)
	FUNC2(1, "malloc");
    headerfile = FUNC3 (fn, "w");
    if (headerfile == NULL)
	FUNC1 (1, "open %s", fn);
    FUNC6(fn);
    fn = NULL;

    /* private header file */
    if (FUNC0(&privheader, "%s-priv.h", headerbase) < 0 || privheader == NULL)
	FUNC2(1, "malloc");
    if (FUNC0(&fn, "%s-priv.hx", headerbase) < 0 || fn == NULL)
	FUNC2(1, "malloc");
    privheaderfile = FUNC3 (fn, "w");
    if (privheaderfile == NULL)
	FUNC1 (1, "open %s", fn);
    FUNC6(fn);
    fn = NULL;

    /* template file */
    if (FUNC0(&template, "%s-template.c", headerbase) < 0 || template == NULL)
	FUNC2(1, "malloc");
    FUNC4 (headerfile,
	     "/* Generated from %s */\n"
	     "/* Do not edit */\n\n",
	     filename);
    FUNC4 (headerfile,
	     "#ifndef __%s_h__\n"
	     "#define __%s_h__\n\n", headerbase, headerbase);
    FUNC4 (headerfile,
	     "#include <stddef.h>\n"
	     "#include <time.h>\n\n");
    FUNC4 (headerfile,
	     "#ifndef __asn1_common_definitions__\n"
	     "#define __asn1_common_definitions__\n\n");
    FUNC4 (headerfile,
	     "typedef struct heim_integer {\n"
	     "  size_t length;\n"
	     "  void *data;\n"
	     "  int negative;\n"
	     "} heim_integer;\n\n");
    FUNC4 (headerfile,
	     "typedef struct heim_octet_string {\n"
	     "  size_t length;\n"
	     "  void *data;\n"
	     "} heim_octet_string;\n\n");
    FUNC4 (headerfile,
	     "typedef char *heim_general_string;\n\n"
	     );
    FUNC4 (headerfile,
	     "typedef char *heim_utf8_string;\n\n"
	     );
    FUNC4 (headerfile,
	     "typedef struct heim_octet_string heim_printable_string;\n\n"
	     );
    FUNC4 (headerfile,
	     "typedef struct heim_octet_string heim_ia5_string;\n\n"
	     );
    FUNC4 (headerfile,
	     "typedef struct heim_bmp_string {\n"
	     "  size_t length;\n"
	     "  uint16_t *data;\n"
	     "} heim_bmp_string;\n\n");
    FUNC4 (headerfile,
	     "typedef struct heim_universal_string {\n"
	     "  size_t length;\n"
	     "  uint32_t *data;\n"
	     "} heim_universal_string;\n\n");
    FUNC4 (headerfile,
	     "typedef char *heim_visible_string;\n\n"
	     );
    FUNC4 (headerfile,
	     "typedef struct heim_oid {\n"
	     "  size_t length;\n"
	     "  unsigned *components;\n"
	     "} heim_oid;\n\n");
    FUNC4 (headerfile,
	     "typedef struct heim_bit_string {\n"
	     "  size_t length;\n"
	     "  void *data;\n"
	     "} heim_bit_string;\n\n");
    FUNC4 (headerfile,
	     "typedef struct heim_octet_string heim_any;\n"
	     "typedef struct heim_octet_string heim_any_set;\n\n");
    FUNC5("#define ASN1_MALLOC_ENCODE(T, B, BL, S, L, R)                  \\\n"
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
    FUNC5("#ifdef _WIN32\n"
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
    FUNC4 (headerfile, "struct units;\n\n");
    FUNC4 (headerfile, "#endif\n\n");
    if (FUNC0(&fn, "%s_files", base) < 0 || fn == NULL)
	FUNC2(1, "malloc");
    logfile = FUNC3(fn, "w");
    if (logfile == NULL)
	FUNC1 (1, "open %s", fn);

    /* if one code file, write into the one codefile */
    if (one_code_file)
	return;

    templatefile = FUNC3 (template, "w");
    if (templatefile == NULL)
	FUNC1 (1, "open %s", template);

    FUNC4 (templatefile,
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

    FUNC4 (templatefile,
	     "#include <%s>\n"
	     "#include <%s>\n"
	     "#include <der.h>\n"
	     "#include <der-private.h>\n"
	     "#include <asn1-template.h>\n",
	     header, privheader);


}