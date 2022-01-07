
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct TYPE_4__ {char* gen_name; TYPE_3__* type; int name; } ;
typedef TYPE_1__ Symbol ;


 int FALSE ;
 int TRUE ;
 int abort () ;
 int codefile ;
 int decode_type (char*,TYPE_3__*,int ,char*,char*,int *,int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ preserve_type (int ) ;

void
generate_type_decode (const Symbol *s)
{
    int preserve = preserve_type(s->name) ? TRUE : FALSE;

    fprintf (codefile, "int ASN1CALL\n"
      "decode_%s(const unsigned char *p HEIMDAL_UNUSED_ATTRIBUTE,"
      " size_t len HEIMDAL_UNUSED_ATTRIBUTE, %s *data, size_t *size)\n"
      "{\n",
      s->gen_name, s->gen_name);

    switch (s->type->type) {
    case 143:
    case 149:
    case 140:
    case 141:
    case 145:
    case 146:
    case 133:
    case 130:
    case 139:
    case 144:
    case 151:
    case 129:
    case 128:
    case 131:
    case 142:
    case 147:
    case 150:
    case 138:
    case 137:
    case 136:
    case 135:
    case 134:
    case 132:
    case 148:
 fprintf (codefile,
   "size_t ret = 0;\n"
   "size_t l HEIMDAL_UNUSED_ATTRIBUTE;\n"
   "int e HEIMDAL_UNUSED_ATTRIBUTE;\n");
 if (preserve)
     fprintf (codefile, "const unsigned char *begin = p;\n");

 fprintf (codefile, "\n");
 fprintf (codefile, "memset(data, 0, sizeof(*data));\n");

 decode_type ("data", s->type, 0, "goto fail", "Top", ((void*)0), 1);
 if (preserve)
     fprintf (codefile,
       "data->_save.data = calloc(1, ret);\n"
       "if (data->_save.data == NULL) { \n"
       "e = ENOMEM; goto fail; \n"
       "}\n"
       "data->_save.length = ret;\n"
       "memcpy(data->_save.data, begin, ret);\n");
 fprintf (codefile,
   "if(size) *size = ret;\n"
   "return 0;\n");
 fprintf (codefile,
   "fail:\n"
   "free_%s(data);\n"
   "return e;\n",
   s->gen_name);
 break;
    default:
 abort ();
    }
    fprintf (codefile, "}\n\n");
}
