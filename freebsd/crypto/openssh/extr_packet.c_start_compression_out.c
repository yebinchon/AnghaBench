
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int compression_out_started; int compression_out_stream; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;


 int debug (char*,int) ;
 int deflateEnd (int *) ;
 int deflateInit (int *,int) ;

__attribute__((used)) static int
start_compression_out(struct ssh *ssh, int level)
{
 if (level < 1 || level > 9)
  return SSH_ERR_INVALID_ARGUMENT;
 debug("Enabling compression at level %d.", level);
 if (ssh->state->compression_out_started == 1)
  deflateEnd(&ssh->state->compression_out_stream);
 switch (deflateInit(&ssh->state->compression_out_stream, level)) {
 case 128:
  ssh->state->compression_out_started = 1;
  break;
 case 129:
  return SSH_ERR_ALLOC_FAIL;
 default:
  return SSH_ERR_INTERNAL_ERROR;
 }
 return 0;
}
