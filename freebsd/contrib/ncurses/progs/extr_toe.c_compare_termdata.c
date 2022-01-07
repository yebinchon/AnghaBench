
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db_index; int term_name; } ;
typedef TYPE_1__ TERMDATA ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_termdata(const void *a, const void *b)
{
    const TERMDATA *p = (const TERMDATA *) a;
    const TERMDATA *q = (const TERMDATA *) b;
    int result = strcmp(p->term_name, q->term_name);

    if (result == 0) {
 result = (p->db_index - q->db_index);
    }
    return result;
}
