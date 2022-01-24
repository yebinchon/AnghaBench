#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_10__ {scalar_t__ is_file; int /*<<< orphan*/  token; } ;
typedef  TYPE_2__ ra_svn_token_entry_t ;
struct TYPE_11__ {TYPE_2__* last_token; int /*<<< orphan*/  tokens; } ;
typedef  TYPE_3__ ra_svn_driver_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_RA_SVN_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *FUNC4(ra_svn_driver_state_t *ds,
                                 svn_string_t *token,
                                 svn_boolean_t is_file,
                                 ra_svn_token_entry_t **entry)
{
  if (ds->last_token && FUNC3(ds->last_token->token, token))
    {
      *entry = ds->last_token;
    }
  else
    {
      *entry = FUNC1(ds->tokens, token->data, token->len);
      ds->last_token = *entry;
    }

  if (!*entry || (*entry)->is_file != is_file)
    return FUNC2(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                            FUNC0("Invalid file or dir token during edit"));
  return SVN_NO_ERROR;
}