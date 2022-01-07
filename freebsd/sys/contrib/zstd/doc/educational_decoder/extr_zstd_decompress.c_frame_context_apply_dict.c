
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dictionary_id; } ;
struct TYPE_7__ {int previous_offsets; int ml_dtable; int of_dtable; int ll_dtable; int literals_dtable; int dict_content_len; scalar_t__ dict_content; TYPE_1__ header; } ;
typedef TYPE_2__ frame_context_t ;
struct TYPE_8__ {scalar_t__ dictionary_id; int previous_offsets; int ml_dtable; int of_dtable; int ll_dtable; int literals_dtable; int content_size; scalar_t__ content; } ;
typedef TYPE_3__ dictionary_t ;


 int ERROR (char*) ;
 int FSE_copy_dtable (int *,int *) ;
 int HUF_copy_dtable (int *,int *) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void frame_context_apply_dict(frame_context_t *const ctx,
                                     const dictionary_t *const dict) {

    if (!dict || !dict->content)
        return;



    if (ctx->header.dictionary_id != 0 &&
        ctx->header.dictionary_id != dict->dictionary_id) {
        ERROR("Wrong dictionary provided");
    }



    ctx->dict_content = dict->content;
    ctx->dict_content_len = dict->content_size;



    if (dict->dictionary_id != 0) {


        HUF_copy_dtable(&ctx->literals_dtable, &dict->literals_dtable);
        FSE_copy_dtable(&ctx->ll_dtable, &dict->ll_dtable);
        FSE_copy_dtable(&ctx->of_dtable, &dict->of_dtable);
        FSE_copy_dtable(&ctx->ml_dtable, &dict->ml_dtable);


        memcpy(ctx->previous_offsets, dict->previous_offsets,
               sizeof(ctx->previous_offsets));
    }
}
