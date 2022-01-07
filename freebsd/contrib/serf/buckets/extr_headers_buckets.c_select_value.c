
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int state; int amt_read; TYPE_1__* cur_read; TYPE_1__* list; } ;
typedef TYPE_2__ headers_context_t ;
typedef int apr_size_t ;
struct TYPE_4__ {char* header; int header_size; char* value; int value_size; } ;






 int READ_START ;



__attribute__((used)) static void select_value(
    headers_context_t *ctx,
    const char **value,
    apr_size_t *len)
{
    const char *v;
    apr_size_t l;

    if (ctx->state == READ_START) {
        if (ctx->list == ((void*)0)) {

            ctx->state = 129;
        }
        else {
            ctx->state = 131;
            ctx->cur_read = ctx->list;
        }
        ctx->amt_read = 0;
    }

    switch (ctx->state) {
    case 131:
        v = ctx->cur_read->header;
        l = ctx->cur_read->header_size;
        break;
    case 130:
        v = ": ";
        l = 2;
        break;
    case 128:
        v = ctx->cur_read->value;
        l = ctx->cur_read->value_size;
        break;
    case 133:
    case 129:
        v = "\r\n";
        l = 2;
        break;
    case 132:
        *len = 0;
        return;
    default:

        return;
    }

    *value = v + ctx->amt_read;
    *len = l - ctx->amt_read;
}
