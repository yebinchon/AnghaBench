
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlist {int dummy; } ;


 int ASN1_TAILQ_INSERT_TAIL (int *,struct tlist*,int ) ;
 int tlistmaster ;
 int tmembers ;

__attribute__((used)) static void
tlist_add(struct tlist *tl)
{
    ASN1_TAILQ_INSERT_TAIL(&tlistmaster, tl, tmembers);
}
