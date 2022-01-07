
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbfns {int id; scalar_t__ name; } ;



__attribute__((used)) static const struct smbfns *
smbfind(int id, const struct smbfns *list)
{
    int sindex;

    for (sindex = 0; list[sindex].name; sindex++)
 if (list[sindex].id == id)
     return(&list[sindex]);

    return(&list[0]);
}
