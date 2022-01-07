
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int collate (int const* const,int const* const) ;

int
fcompare(const void *xfile1, const void *xfile2)
{
    const Char *const *file1 = xfile1, *const *file2 = xfile2;

    return collate(*file1, *file2);
}
