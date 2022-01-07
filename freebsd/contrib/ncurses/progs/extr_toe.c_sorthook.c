
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db_index; void* description; void* term_name; int checksum; } ;
typedef int TERMTYPE ;
typedef TYPE_1__ TERMDATA ;


 int checksum_of (int *) ;
 TYPE_1__* new_termdata () ;
 void* strmalloc (char const*) ;
 char const* term_description (int *) ;

__attribute__((used)) static void
sorthook(int db_index, int db_limit, const char *term_name, TERMTYPE *tp)
{
    TERMDATA *data = new_termdata();

    data->db_index = db_index;
    data->checksum = ((db_limit > 1) ? checksum_of(tp) : 0);
    data->term_name = strmalloc(term_name);
    data->description = strmalloc(term_description(tp));
}
