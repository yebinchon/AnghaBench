
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {char* gen_name; int name; int type; } ;
typedef TYPE_1__ Symbol ;
typedef int FILE ;


 int close_codefile () ;
 int * codefile ;
 int fprintf (int *,char*,...) ;
 int generate_glue (int ,char*) ;
 int generate_header_of_codefile (char*) ;
 int generate_template (TYPE_1__ const*) ;
 int generate_type_copy (TYPE_1__ const*) ;
 int generate_type_decode (TYPE_1__ const*) ;
 int generate_type_encode (TYPE_1__ const*) ;
 int generate_type_free (TYPE_1__ const*) ;
 int generate_type_header (TYPE_1__ const*) ;
 int generate_type_length (TYPE_1__ const*) ;
 int generate_type_seq (TYPE_1__ const*) ;
 int * headerfile ;
 scalar_t__ is_export (int ) ;
 scalar_t__ is_template_compat (TYPE_1__ const*) ;
 int one_code_file ;
 int * privheaderfile ;
 scalar_t__ template_flag ;

void
generate_type (const Symbol *s)
{
    FILE *h;
    const char * exp;

    if (!one_code_file)
 generate_header_of_codefile(s->gen_name);

    generate_type_header (s);

    if (template_flag)
 generate_template(s);

    if (template_flag == 0 || is_template_compat(s) == 0) {
 generate_type_encode (s);
 generate_type_decode (s);
 generate_type_free (s);
 generate_type_length (s);
 generate_type_copy (s);
    }
    generate_type_seq (s);
    generate_glue (s->type, s->gen_name);



    if (is_export(s->name)) {
 h = headerfile;
 exp = "ASN1EXP ";
    } else {
 h = privheaderfile;
 exp = "";
    }

    fprintf (h,
      "%sint    ASN1CALL "
      "decode_%s(const unsigned char *, size_t, %s *, size_t *);\n",
      exp,
      s->gen_name, s->gen_name);
    fprintf (h,
      "%sint    ASN1CALL "
      "encode_%s(unsigned char *, size_t, const %s *, size_t *);\n",
      exp,
      s->gen_name, s->gen_name);
    fprintf (h,
      "%ssize_t ASN1CALL length_%s(const %s *);\n",
      exp,
      s->gen_name, s->gen_name);
    fprintf (h,
      "%sint    ASN1CALL copy_%s  (const %s *, %s *);\n",
      exp,
      s->gen_name, s->gen_name, s->gen_name);
    fprintf (h,
      "%svoid   ASN1CALL free_%s  (%s *);\n",
      exp,
      s->gen_name, s->gen_name);

    fprintf(h, "\n\n");

    if (!one_code_file) {
 fprintf(codefile, "\n\n");
 close_codefile();
 }
}
