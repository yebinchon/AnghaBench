#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {int version; int /*<<< orphan*/  name; int /*<<< orphan*/  fd; int /*<<< orphan*/  ac; } ;
typedef  TYPE_1__ slave ;
typedef  int /*<<< orphan*/  krb5_storage ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int int32_t ;

/* Variables and functions */
#define  ARE_YOU_THERE 131 
#define  FOR_YOU 130 
#define  I_AM_HERE 129 
#define  I_HAVE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC9 (krb5_context context, slave *s, int log_fd,
	     const char *database, uint32_t current_version)
{
    int ret = 0;
    krb5_data out;
    krb5_storage *sp;
    int32_t tmp;

    ret = FUNC1(context, s->ac, &s->fd, &out);
    if(ret) {
	FUNC5 (context, ret, "error reading message from %s", s->name);
	return 1;
    }

    sp = FUNC4 (out.data, out.length);
    if (sp == NULL) {
	FUNC6 (context, "process_msg: no memory");
	FUNC0 (&out);
	return 1;
    }
    if (FUNC2 (sp, &tmp) != 0) {
	FUNC6 (context, "process_msg: client send too short command");
	FUNC0 (&out);
	return 1;
    }
    switch (tmp) {
    case I_HAVE :
	ret = FUNC2 (sp, &tmp);
	if (ret != 0) {
	    FUNC6 (context, "process_msg: client send too I_HAVE data");
	    break;
	}
	/* new started slave that have old log */
	if (s->version == 0 && tmp != 0) {
	    if (current_version < (uint32_t)tmp) {
		FUNC6 (context, "Slave %s (version %lu) have later version "
			    "the master (version %lu) OUT OF SYNC",
			    s->name, (unsigned long)tmp,
			    (unsigned long)current_version);
	    }
	    s->version = tmp;
	}
	if ((uint32_t)tmp < s->version) {
	    FUNC6 (context, "Slave claims to not have "
			"version we already sent to it");
	} else {
	    ret = FUNC7 (context, s, log_fd, database, current_version);
	}
	break;
    case I_AM_HERE :
	break;
    case ARE_YOU_THERE:
    case FOR_YOU :
    default :
	FUNC6 (context, "Ignoring command %d", tmp);
	break;
    }

    FUNC0 (&out);
    FUNC3 (sp);

    FUNC8(s);

    return ret;
}