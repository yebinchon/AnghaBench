
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldat {struct ldat* text; } ;


 int ERR ;
 int free (struct ldat*) ;

__attribute__((used)) static int
cleanup_lines(struct ldat *data, int length)
{
    while (--length >= 0)
 free(data[length].text);
    free(data);
    return ERR;
}
