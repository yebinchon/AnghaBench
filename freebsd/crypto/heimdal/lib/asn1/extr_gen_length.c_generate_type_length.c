
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* gen_name; int type; } ;
typedef TYPE_1__ Symbol ;


 int codefile ;
 int fprintf (int ,char*,...) ;
 int length_type (char*,int ,char*,char*) ;

void
generate_type_length (const Symbol *s)
{
    fprintf (codefile,
      "size_t ASN1CALL\n"
      "length_%s(const %s *data)\n"
      "{\n"
      "size_t ret = 0;\n",
      s->gen_name, s->gen_name);

    length_type ("data", s->type, "ret", "Top");
    fprintf (codefile, "return ret;\n}\n\n");
}
