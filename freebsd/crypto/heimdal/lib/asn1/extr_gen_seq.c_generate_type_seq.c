
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; TYPE_1__* symbol; struct TYPE_6__* subtype; } ;
typedef TYPE_2__ Type ;
struct TYPE_7__ {char* name; char* gen_name; TYPE_2__* type; } ;
struct TYPE_5__ {char* gen_name; } ;
typedef TYPE_3__ Symbol ;


 scalar_t__ TSequenceOf ;
 scalar_t__ TSetOf ;
 scalar_t__ TTag ;
 scalar_t__ TType ;
 int codefile ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int headerfile ;
 int seq_type (char*) ;
 int stderr ;

void
generate_type_seq (const Symbol *s)
{
    char *subname;
    Type *type;

    if (!seq_type(s->name))
 return;
    type = s->type;
    while(type->type == TTag)
 type = type->subtype;

    if (type->type != TSequenceOf && type->type != TSetOf) {
 fprintf(stderr, "%s not seq of %d\n", s->name, (int)type->type);
 return;
    }






    if (type->subtype->type != TType) {
 fprintf(stderr, "%s subtype is not a type, can't generate "
        "sequence code for this case: %d\n",
  s->name, (int)type->subtype->type);
 exit(1);
    }

    subname = type->subtype->symbol->gen_name;

    fprintf (headerfile,
      "ASN1EXP int   ASN1CALL add_%s  (%s *, const %s *);\n"
      "ASN1EXP int   ASN1CALL remove_%s  (%s *, unsigned int);\n",
      s->gen_name, s->gen_name, subname,
      s->gen_name, s->gen_name);

    fprintf (codefile, "int ASN1CALL\n"
      "add_%s(%s *data, const %s *element)\n"
      "{\n",
      s->gen_name, s->gen_name, subname);

    fprintf (codefile,
      "int ret;\n"
      "void *ptr;\n"
      "\n"
      "ptr = realloc(data->val, \n"
      "\t(data->len + 1) * sizeof(data->val[0]));\n"
      "if (ptr == NULL) return ENOMEM;\n"
      "data->val = ptr;\n\n"
      "ret = copy_%s(element, &data->val[data->len]);\n"
      "if (ret) return ret;\n"
      "data->len++;\n"
      "return 0;\n",
      subname);

    fprintf (codefile, "}\n\n");

    fprintf (codefile, "int ASN1CALL\n"
      "remove_%s(%s *data, unsigned int element)\n"
      "{\n",
      s->gen_name, s->gen_name);

    fprintf (codefile,
      "void *ptr;\n"
      "\n"
      "if (data->len == 0 || element >= data->len)\n"
      "\treturn ASN1_OVERRUN;\n"
      "free_%s(&data->val[element]);\n"
      "data->len--;\n"

      "if (element < data->len)\n"
      "\tmemmove(&data->val[element], &data->val[element + 1], \n"
      "\t\tsizeof(data->val[0]) * (data->len - element));\n"

      "ptr = realloc(data->val, data->len * sizeof(data->val[0]));\n"
      "if (ptr != NULL || data->len == 0) data->val = ptr;\n"
      "return 0;\n",
      subname);

    fprintf (codefile, "}\n\n");
}
