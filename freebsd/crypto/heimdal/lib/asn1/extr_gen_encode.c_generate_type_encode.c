
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct TYPE_4__ {char* gen_name; TYPE_3__* type; } ;
typedef TYPE_1__ Symbol ;
 int abort () ;
 int codefile ;
 int encode_type (char*,TYPE_3__*,char*) ;
 int fprintf (int ,char*,...) ;

void
generate_type_encode (const Symbol *s)
{
    fprintf (codefile, "int ASN1CALL\n"
      "encode_%s(unsigned char *p HEIMDAL_UNUSED_ATTRIBUTE, size_t len HEIMDAL_UNUSED_ATTRIBUTE,"
      " const %s *data, size_t *size)\n"
      "{\n",
      s->gen_name, s->gen_name);

    switch (s->type->type) {
    case 143:
    case 149:
    case 140:
    case 145:
    case 146:
    case 133:
    case 131:
    case 130:
    case 139:
    case 144:
    case 151:
    case 129:
    case 128:
    case 142:
    case 150:
    case 147:
    case 141:
    case 138:
    case 137:
    case 136:
    case 135:
    case 134:
    case 132:
    case 148:
 fprintf (codefile,
   "size_t ret HEIMDAL_UNUSED_ATTRIBUTE = 0;\n"
   "size_t l HEIMDAL_UNUSED_ATTRIBUTE;\n"
   "int i HEIMDAL_UNUSED_ATTRIBUTE, e HEIMDAL_UNUSED_ATTRIBUTE;\n\n");

 encode_type("data", s->type, "Top");

 fprintf (codefile, "*size = ret;\n"
   "return 0;\n");
 break;
    default:
 abort ();
    }
    fprintf (codefile, "}\n\n");
}
