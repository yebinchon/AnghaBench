
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfsdsk {int dummy; } ;


 struct zfsdsk* malloc (int) ;

__attribute__((used)) static struct zfsdsk *
copy_dsk(struct zfsdsk *zdsk)
{
    struct zfsdsk *newdsk;

    newdsk = malloc(sizeof(struct zfsdsk));
    *newdsk = *zdsk;
    return (newdsk);
}
