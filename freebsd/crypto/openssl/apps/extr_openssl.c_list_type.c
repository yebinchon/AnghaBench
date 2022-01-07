
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int columns; int width; int member_0; } ;
struct TYPE_5__ {scalar_t__ type; int * name; } ;
typedef scalar_t__ FUNC_TYPE ;
typedef TYPE_1__ FUNCTION ;
typedef TYPE_2__ DISPLAY_COLUMNS ;


 int BIO_printf (int ,char*,...) ;
 int bio_out ;
 int calculate_columns (TYPE_2__*) ;
 TYPE_1__* functions ;

__attribute__((used)) static void list_type(FUNC_TYPE ft, int one)
{
    FUNCTION *fp;
    int i = 0;
    DISPLAY_COLUMNS dc = {0};

    if (!one)
        calculate_columns(&dc);

    for (fp = functions; fp->name != ((void*)0); fp++) {
        if (fp->type != ft)
            continue;
        if (one) {
            BIO_printf(bio_out, "%s\n", fp->name);
        } else {
            if (i % dc.columns == 0 && i > 0)
                BIO_printf(bio_out, "\n");
            BIO_printf(bio_out, "%-*s", dc.width, fp->name);
            i++;
        }
    }
    if (!one)
        BIO_printf(bio_out, "\n\n");
}
