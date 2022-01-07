
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tildecache {int user; } ;


 int Strcmp (int ,int ) ;

__attribute__((used)) static int
tildecompare(const void *xp1, const void *xp2)
{
    const struct tildecache *p1, *p2;

    p1 = xp1;
    p2 = xp2;
    return Strcmp(p1->user, p2->user);
}
