#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  recno ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  apr_uuid_t ;
struct TYPE_13__ {int (* set_re_len ) (TYPE_2__*,int /*<<< orphan*/ ) ;int (* open ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int) ;int (* close ) (TYPE_2__*,int /*<<< orphan*/ ) ;int (* put ) (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int* data; int size; int ulen; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  DB_ENV ;
typedef  TYPE_1__ DBT ;
typedef  TYPE_2__ DB ;

/* Variables and functions */
 int /*<<< orphan*/  APR_UUID_FORMATTED_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DB_APPEND ; 
 int DB_CREATE ; 
 int /*<<< orphan*/  DB_DBT_USERMEM ; 
 int DB_EXCL ; 
 int /*<<< orphan*/  DB_RECNO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 () ; 

int
FUNC11(DB **uuids_p,
                             DB_ENV *env,
                             svn_boolean_t create)
{
  const u_int32_t open_flags = (create ? (DB_CREATE | DB_EXCL) : 0);
  DB *uuids;
  int error;

  FUNC0(FUNC10());
  FUNC0(FUNC4(&uuids, env, 0));
  FUNC0(uuids->set_re_len(uuids, APR_UUID_FORMATTED_LENGTH));

  error = (uuids->open)(FUNC1(uuids, NULL),
                        "uuids", 0, DB_RECNO,
                        open_flags, 0666);

  /* This is a temporary compatibility check; it creates the
     UUIDs table if one does not already exist. */
  if (error == ENOENT && (! create))
    {
      FUNC0(uuids->close(uuids, 0));
      return FUNC11(uuids_p, env, TRUE);
    }

  FUNC0(error);

  if (create)
    {
      char buffer[APR_UUID_FORMATTED_LENGTH + 1];
      DBT key, value;
      apr_uuid_t uuid;
      int recno = 0;

      FUNC9(&key);
      key.data = &recno;
      key.size = sizeof(recno);
      key.ulen = key.size;
      key.flags |= DB_DBT_USERMEM;

      FUNC9(&value);
      value.data = buffer;
      value.size = sizeof(buffer) - 1;

      FUNC3(&uuid);
      FUNC2(buffer, &uuid);

      FUNC0(uuids->put(uuids, 0, &key, &value, DB_APPEND));
    }

  *uuids_p = uuids;
  return 0;
}