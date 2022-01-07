
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_7__ {scalar_t__ lc; scalar_t__ lp; scalar_t__ pb; } ;
typedef TYPE_2__ lzma_options_lzma ;
struct TYPE_6__ {scalar_t__ lc; scalar_t__ lp; scalar_t__ pb; } ;
struct TYPE_8__ {scalar_t__ sequence; int need_properties; int need_state_reset; TYPE_1__ opt_cur; } ;
typedef TYPE_3__ lzma_lzma2_coder ;
struct TYPE_9__ {TYPE_2__* options; } ;
typedef TYPE_4__ lzma_filter ;


 scalar_t__ LZMA_LCLP_MAX ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 scalar_t__ LZMA_PB_MAX ;
 int LZMA_PROG_ERROR ;
 scalar_t__ SEQ_INIT ;

__attribute__((used)) static lzma_ret
lzma2_encoder_options_update(void *coder_ptr, const lzma_filter *filter)
{
 lzma_lzma2_coder *coder = coder_ptr;




 if (filter->options == ((void*)0) || coder->sequence != SEQ_INIT)
  return LZMA_PROG_ERROR;



 const lzma_options_lzma *opt = filter->options;
 if (coder->opt_cur.lc != opt->lc || coder->opt_cur.lp != opt->lp
   || coder->opt_cur.pb != opt->pb) {

  if (opt->lc > LZMA_LCLP_MAX || opt->lp > LZMA_LCLP_MAX
    || opt->lc + opt->lp > LZMA_LCLP_MAX
    || opt->pb > LZMA_PB_MAX)
   return LZMA_OPTIONS_ERROR;



  coder->opt_cur.lc = opt->lc;
  coder->opt_cur.lp = opt->lp;
  coder->opt_cur.pb = opt->pb;
  coder->need_properties = 1;
  coder->need_state_reset = 1;
 }

 return LZMA_OK;
}
