
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* state; } ;
struct TYPE_2__ {int compression_in_started; int compression_in_stream; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;


 int inflateEnd (int *) ;
 int inflateInit (int *) ;

__attribute__((used)) static int
start_compression_in(struct ssh *ssh)
{
 if (ssh->state->compression_in_started == 1)
  inflateEnd(&ssh->state->compression_in_stream);
 switch (inflateInit(&ssh->state->compression_in_stream)) {
 case 128:
  ssh->state->compression_in_started = 1;
  break;
 case 129:
  return SSH_ERR_ALLOC_FAIL;
 default:
  return SSH_ERR_INTERNAL_ERROR;
 }
 return 0;
}
