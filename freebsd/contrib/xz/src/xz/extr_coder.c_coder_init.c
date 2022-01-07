
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ lzma_ret ;
struct TYPE_17__ {int src_name; } ;
typedef TYPE_1__ file_pair ;
typedef enum format_type { ____Placeholder_format_type } format_type ;
typedef enum coder_init_ret { ____Placeholder_coder_init_ret } coder_init_ret ;
struct TYPE_19__ {int options; } ;
struct TYPE_18__ {scalar_t__ avail_out; int * next_out; } ;


 int CODER_INIT_ERROR ;
 int CODER_INIT_NORMAL ;
 int CODER_INIT_PASSTHRU ;




 int LZMA_CONCATENATED ;
 scalar_t__ LZMA_FORMAT_ERROR ;
 int LZMA_IGNORE_CHECK ;
 scalar_t__ LZMA_MEMLIMIT_ERROR ;
 scalar_t__ LZMA_OK ;
 scalar_t__ LZMA_PROG_ERROR ;
 int LZMA_RUN ;
 int LZMA_TELL_UNSUPPORTED_CHECK ;
 scalar_t__ MODE_COMPRESS ;
 scalar_t__ MODE_DECOMPRESS ;
 int V_ERROR ;
 int assert (int ) ;
 int check ;
 TYPE_5__* filters ;
 int hardware_memlimit_get (scalar_t__) ;
 int hardware_threads_get () ;
 int is_format_lzma () ;
 int is_format_xz () ;
 scalar_t__ lzma_alone_decoder (TYPE_2__*,int ) ;
 scalar_t__ lzma_alone_encoder (TYPE_2__*,int ) ;
 scalar_t__ lzma_code (TYPE_2__*,int ) ;
 int lzma_memusage (TYPE_2__*) ;
 scalar_t__ lzma_raw_decoder (TYPE_2__*,TYPE_5__*) ;
 scalar_t__ lzma_raw_encoder (TYPE_2__*,TYPE_5__*) ;
 scalar_t__ lzma_stream_decoder (TYPE_2__*,int ,int ) ;
 scalar_t__ lzma_stream_encoder (TYPE_2__*,TYPE_5__*,int ) ;
 scalar_t__ lzma_stream_encoder_mt (TYPE_2__*,int *) ;
 int message_error (char*,int ,int ) ;
 int message_mem_needed (int ,int ) ;
 int message_strm (scalar_t__) ;
 int mt_options ;
 int opt_force ;
 int opt_format ;
 scalar_t__ opt_ignore_check ;
 scalar_t__ opt_mode ;
 int opt_single_stream ;
 int opt_stdout ;
 TYPE_2__ strm ;

__attribute__((used)) static enum coder_init_ret
coder_init(file_pair *pair)
{
 lzma_ret ret = LZMA_PROG_ERROR;

 if (opt_mode == MODE_COMPRESS) {
 } else {
 }

 if (ret != LZMA_OK) {
  message_error("%s: %s", pair->src_name, message_strm(ret));
  if (ret == LZMA_MEMLIMIT_ERROR)
   message_mem_needed(V_ERROR, lzma_memusage(&strm));

  return CODER_INIT_ERROR;
 }

 return CODER_INIT_NORMAL;
}
