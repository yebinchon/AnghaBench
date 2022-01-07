
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
 int fprintf (int ,char*,...) ;
 int free_type (char*,int ,int) ;
 scalar_t__ preserve_type (int ) ;

void
generate_type_free (const Symbol *s)
{
    int preserve = preserve_type(s->name) ? TRUE : FALSE;

    fprintf (codefile, "void ASN1CALL\n"
      "free_%s(%s *data)\n"
      "{\n",
      s->gen_name, s->gen_name);

    free_type ("data", s->type, preserve);
    fprintf (codefile, "}\n\n");
}
