
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int type; int gen_name; } ;
typedef TYPE_1__ Symbol ;


 int FALSE ;
 int TRUE ;
 int define_asn1 (int ,int ) ;
 int define_type (int ,int ,int ,int ,int,int) ;
 int fprintf (int ,char*,...) ;
 int headerfile ;
 scalar_t__ preserve_type (char*) ;

__attribute__((used)) static void
generate_type_header (const Symbol *s)
{
    int preservep = preserve_type(s->name) ? TRUE : FALSE;

    fprintf (headerfile, "/*\n");
    fprintf (headerfile, "%s ::= ", s->name);
    define_asn1 (0, s->type);
    fprintf (headerfile, "\n*/\n\n");

    fprintf (headerfile, "typedef ");
    define_type (0, s->gen_name, s->gen_name, s->type, TRUE, preservep);

    fprintf (headerfile, "\n");
}
