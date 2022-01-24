#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_packed__int_stream_t ;
typedef  int /*<<< orphan*/  svn_packed__data_root_t ;
typedef  int /*<<< orphan*/  svn_packed__byte_stream_t ;
struct TYPE_6__ {int base_count; int instruction_count; int rep_count; void** first_instructions; int base_text_len; TYPE_2__* instructions; TYPE_3__* bases; int /*<<< orphan*/  text_len; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ svn_fs_x__reps_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {void* count; scalar_t__ offset; } ;
typedef  TYPE_2__ instruction_t ;
struct TYPE_8__ {int priority; void* rep; scalar_t__ item_index; scalar_t__ revision; } ;
typedef  TYPE_3__ base_t ;
typedef  void* apr_uint32_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC13(svn_fs_x__reps_t **container,
                              svn_stream_t *stream,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  apr_size_t i;

  base_t *bases;
  apr_uint32_t *first_instructions;
  instruction_t *instructions;

  svn_fs_x__reps_t *reps = FUNC2(result_pool, sizeof(*reps));

  svn_packed__data_root_t *root;
  svn_packed__int_stream_t *bases_stream;
  svn_packed__int_stream_t *reps_stream;
  svn_packed__int_stream_t *instructions_stream;
  svn_packed__int_stream_t *misc_stream;
  svn_packed__byte_stream_t *text_stream;

  /* read from disk */
  FUNC0(FUNC4(&root, stream, result_pool, scratch_pool));

  bases_stream = FUNC6(root);
  reps_stream = FUNC12(bases_stream);
  instructions_stream = FUNC12(reps_stream);
  misc_stream = FUNC12(instructions_stream);
  text_stream = FUNC5(root);

  /* text */
  reps->text = FUNC8(text_stream, &reps->text_len);
  reps->text = FUNC3(result_pool, reps->text, reps->text_len);

  /* de-serialize  bases */
  reps->base_count
    = FUNC11(FUNC7(bases_stream));
  bases = FUNC1(result_pool, reps->base_count * sizeof(*bases));
  reps->bases = bases;

  for (i = 0; i < reps->base_count; ++i)
    {
      base_t *base = bases + i;
      base->revision = (svn_revnum_t)FUNC9(bases_stream);
      base->item_index = FUNC10(bases_stream);
      base->priority = (int)FUNC10(bases_stream);
      base->rep = (apr_uint32_t)FUNC10(bases_stream);
    }

  /* de-serialize instructions */
  reps->instruction_count
    = FUNC11
         (FUNC7(instructions_stream));
  instructions
    = FUNC1(result_pool,
                 reps->instruction_count * sizeof(*instructions));
  reps->instructions = instructions;

  for (i = 0; i < reps->instruction_count; ++i)
    {
      instruction_t *instruction = instructions + i;
      instruction->offset
        = (apr_int32_t)FUNC9(instructions_stream);
      instruction->count
        = (apr_uint32_t)FUNC10(instructions_stream);
    }

  /* de-serialize reps */
  reps->rep_count = FUNC11(reps_stream);
  first_instructions
    = FUNC1(result_pool,
                 (reps->rep_count + 1) * sizeof(*first_instructions));
  reps->first_instructions = first_instructions;

  for (i = 0; i < reps->rep_count; ++i)
    first_instructions[i]
      = (apr_uint32_t)FUNC10(reps_stream);
  first_instructions[reps->rep_count] = (apr_uint32_t)reps->instruction_count;

  /* other elements */
  reps->base_text_len = (apr_size_t)FUNC10(misc_stream);

  /* return result */
  *container = reps;

  return SVN_NO_ERROR;
}