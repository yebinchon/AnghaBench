
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct member {scalar_t__ ellipsis; } ;


 struct member* ASN1_TAILQ_NEXT (struct member*,int ) ;
 int members ;

__attribute__((used)) static const char *
last_member_p(struct member *m)
{
    struct member *n = ASN1_TAILQ_NEXT(m, members);
    if (n == ((void*)0))
 return "";
    if (n->ellipsis && ASN1_TAILQ_NEXT(n, members) == ((void*)0))
 return "";
    return ",";
}
