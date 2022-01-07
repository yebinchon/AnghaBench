
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* gen_name; int type; int name; } ;
typedef TYPE_1__ Symbol ;
typedef int FILE ;


 int fprintf (int *,char*,char*,char*,char const*,...) ;
 int gen_extern_stubs (int *,char*) ;
 int generate_template_type (char*,char const**,int ,char*,int *,int ,int ,int ,int) ;
 int * get_code_file () ;
 scalar_t__ support_ber ;
 scalar_t__ use_extern (TYPE_1__ const*) ;

void
generate_template(const Symbol *s)
{
    FILE *f = get_code_file();
    const char *dupname;

    if (use_extern(s)) {
 gen_extern_stubs(f, s->gen_name);
 return;
    }

    generate_template_type(s->gen_name, &dupname, s->name, s->gen_name, ((void*)0), s->type, 0, 0, 1);

    fprintf(f,
     "\n"
     "int\n"
     "decode_%s(const unsigned char *p, size_t len, %s *data, size_t *size)\n"
     "{\n"
     "    return _asn1_decode_top(asn1_%s, 0|%s, p, len, data, size);\n"
     "}\n"
     "\n",
     s->gen_name,
     s->gen_name,
     dupname,
     support_ber ? "A1_PF_ALLOW_BER" : "0");

    fprintf(f,
     "\n"
     "int\n"
     "encode_%s(unsigned char *p, size_t len, const %s *data, size_t *size)\n"
     "{\n"
     "    return _asn1_encode(asn1_%s, p, len, data, size);\n"
     "}\n"
     "\n",
     s->gen_name,
     s->gen_name,
     dupname);

    fprintf(f,
     "\n"
     "size_t\n"
     "length_%s(const %s *data)\n"
     "{\n"
     "    return _asn1_length(asn1_%s, data);\n"
     "}\n"
     "\n",
     s->gen_name,
     s->gen_name,
     dupname);


    fprintf(f,
     "\n"
     "void\n"
     "free_%s(%s *data)\n"
     "{\n"
     "    _asn1_free(asn1_%s, data);\n"
     "}\n"
     "\n",
     s->gen_name,
     s->gen_name,
     dupname);

    fprintf(f,
     "\n"
     "int\n"
     "copy_%s(const %s *from, %s *to)\n"
     "{\n"
     "    return _asn1_copy_top(asn1_%s, from, to);\n"
     "}\n"
     "\n",
     s->gen_name,
     s->gen_name,
     s->gen_name,
     dupname);
}
