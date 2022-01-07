
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* gen_name; int type; int name; } ;
typedef TYPE_1__ Symbol ;


 int FALSE ;
 int TRUE ;
 int codefile ;
 int copy_type (char*,char*,int ,int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ preserve_type (int ) ;
 scalar_t__ used_fail ;

void
generate_type_copy (const Symbol *s)
{
  int preserve = preserve_type(s->name) ? TRUE : FALSE;

  used_fail = 0;

  fprintf (codefile, "int ASN1CALL\n"
    "copy_%s(const %s *from, %s *to)\n"
    "{\n"
    "memset(to, 0, sizeof(*to));\n",
    s->gen_name, s->gen_name, s->gen_name);
  copy_type ("from", "to", s->type, preserve);
  fprintf (codefile, "return 0;\n");

  if (used_fail)
      fprintf (codefile, "fail:\n"
        "free_%s(to);\n"
        "return ENOMEM;\n",
        s->gen_name);

  fprintf(codefile,
   "}\n\n");
}
