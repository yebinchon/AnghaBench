
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_packed__int_stream_t ;
typedef int svn_packed__data_root_t ;
typedef int svn_packed__byte_stream_t ;
struct TYPE_6__ {int base_count; int instruction_count; int rep_count; void** first_instructions; int base_text_len; TYPE_2__* instructions; TYPE_3__* bases; int text_len; int text; } ;
typedef TYPE_1__ svn_fs_x__reps_t ;
typedef int svn_error_t ;
struct TYPE_7__ {void* count; scalar_t__ offset; } ;
typedef TYPE_2__ instruction_t ;
struct TYPE_8__ {int priority; void* rep; scalar_t__ item_index; scalar_t__ revision; } ;
typedef TYPE_3__ base_t ;
typedef void* apr_uint32_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int32_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* apr_palloc (int *,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pmemdup (int *,int ,int ) ;
 int svn_packed__data_read (int **,int *,int *,int *) ;
 int * svn_packed__first_byte_stream (int *) ;
 int * svn_packed__first_int_stream (int *) ;
 int * svn_packed__first_int_substream (int *) ;
 int svn_packed__get_bytes (int *,int *) ;
 scalar_t__ svn_packed__get_int (int *) ;
 scalar_t__ svn_packed__get_uint (int *) ;
 void* svn_packed__int_count (int *) ;
 int * svn_packed__next_int_stream (int *) ;

svn_error_t *
svn_fs_x__read_reps_container(svn_fs_x__reps_t **container,
                              svn_stream_t *stream,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  apr_size_t i;

  base_t *bases;
  apr_uint32_t *first_instructions;
  instruction_t *instructions;

  svn_fs_x__reps_t *reps = apr_pcalloc(result_pool, sizeof(*reps));

  svn_packed__data_root_t *root;
  svn_packed__int_stream_t *bases_stream;
  svn_packed__int_stream_t *reps_stream;
  svn_packed__int_stream_t *instructions_stream;
  svn_packed__int_stream_t *misc_stream;
  svn_packed__byte_stream_t *text_stream;


  SVN_ERR(svn_packed__data_read(&root, stream, result_pool, scratch_pool));

  bases_stream = svn_packed__first_int_stream(root);
  reps_stream = svn_packed__next_int_stream(bases_stream);
  instructions_stream = svn_packed__next_int_stream(reps_stream);
  misc_stream = svn_packed__next_int_stream(instructions_stream);
  text_stream = svn_packed__first_byte_stream(root);


  reps->text = svn_packed__get_bytes(text_stream, &reps->text_len);
  reps->text = apr_pmemdup(result_pool, reps->text, reps->text_len);


  reps->base_count
    = svn_packed__int_count(svn_packed__first_int_substream(bases_stream));
  bases = apr_palloc(result_pool, reps->base_count * sizeof(*bases));
  reps->bases = bases;

  for (i = 0; i < reps->base_count; ++i)
    {
      base_t *base = bases + i;
      base->revision = (svn_revnum_t)svn_packed__get_int(bases_stream);
      base->item_index = svn_packed__get_uint(bases_stream);
      base->priority = (int)svn_packed__get_uint(bases_stream);
      base->rep = (apr_uint32_t)svn_packed__get_uint(bases_stream);
    }


  reps->instruction_count
    = svn_packed__int_count
         (svn_packed__first_int_substream(instructions_stream));
  instructions
    = apr_palloc(result_pool,
                 reps->instruction_count * sizeof(*instructions));
  reps->instructions = instructions;

  for (i = 0; i < reps->instruction_count; ++i)
    {
      instruction_t *instruction = instructions + i;
      instruction->offset
        = (apr_int32_t)svn_packed__get_int(instructions_stream);
      instruction->count
        = (apr_uint32_t)svn_packed__get_uint(instructions_stream);
    }


  reps->rep_count = svn_packed__int_count(reps_stream);
  first_instructions
    = apr_palloc(result_pool,
                 (reps->rep_count + 1) * sizeof(*first_instructions));
  reps->first_instructions = first_instructions;

  for (i = 0; i < reps->rep_count; ++i)
    first_instructions[i]
      = (apr_uint32_t)svn_packed__get_uint(reps_stream);
  first_instructions[reps->rep_count] = (apr_uint32_t)reps->instruction_count;


  reps->base_text_len = (apr_size_t)svn_packed__get_uint(misc_stream);


  *container = reps;

  return SVN_NO_ERROR;
}
