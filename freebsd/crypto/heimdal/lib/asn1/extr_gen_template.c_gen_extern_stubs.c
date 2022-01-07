
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*,char const*,char const*,char const*,char const*,char const*,char const*) ;

__attribute__((used)) static void
gen_extern_stubs(FILE *f, const char *name)
{
    fprintf(f,
     "static const struct asn1_type_func asn1_extern_%s = {\n"
     "\t(asn1_type_encode)encode_%s,\n"
     "\t(asn1_type_decode)decode_%s,\n"
     "\t(asn1_type_length)length_%s,\n"
     "\t(asn1_type_copy)copy_%s,\n"
     "\t(asn1_type_release)free_%s,\n"
     "\tsizeof(%s)\n"
     "};\n",
     name, name, name, name,
     name, name, name);
}
