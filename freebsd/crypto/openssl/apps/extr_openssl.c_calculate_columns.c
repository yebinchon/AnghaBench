
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int width; int columns; } ;
struct TYPE_5__ {scalar_t__ type; int * name; } ;
typedef TYPE_1__ FUNCTION ;
typedef TYPE_2__ DISPLAY_COLUMNS ;


 scalar_t__ FT_cipher ;
 scalar_t__ FT_general ;
 scalar_t__ FT_md ;
 TYPE_1__* functions ;
 int strlen (int *) ;

__attribute__((used)) static void calculate_columns(DISPLAY_COLUMNS *dc)
{
    FUNCTION *f;
    int len, maxlen = 0;

    for (f = functions; f->name != ((void*)0); ++f)
        if (f->type == FT_general || f->type == FT_md || f->type == FT_cipher)
            if ((len = strlen(f->name)) > maxlen)
                maxlen = len;

    dc->width = maxlen + 2;
    dc->columns = (80 - 1) / dc->width;
}
