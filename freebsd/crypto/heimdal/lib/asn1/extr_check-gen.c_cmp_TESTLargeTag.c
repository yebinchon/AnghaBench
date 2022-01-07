
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TESTLargeTag ;


 int COMPARE_INTEGER (int *,int *,int ) ;
 int bar ;
 int foo ;

__attribute__((used)) static int
cmp_TESTLargeTag (void *a, void *b)
{
    TESTLargeTag *aa = a;
    TESTLargeTag *ab = b;

    COMPARE_INTEGER(aa,ab,foo);
    COMPARE_INTEGER(aa,ab,bar);
    return 0;
}
