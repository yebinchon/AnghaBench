#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ log_id_len; scalar_t__ version; scalar_t__ sct_len; scalar_t__ ext_len; scalar_t__ sig_len; int /*<<< orphan*/  sig; int /*<<< orphan*/  ext; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  log_id; int /*<<< orphan*/  sct; } ;
typedef  TYPE_1__ SCT ;
typedef  int /*<<< orphan*/  CTLOG_STORE ;
typedef  int /*<<< orphan*/  CTLOG ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ SCT_VERSION_V1 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(const SCT *sct, BIO *out, int indent,
               const CTLOG_STORE *log_store)
{
    const CTLOG *log = NULL;

    if (log_store != NULL) {
        log = FUNC2(log_store, sct->log_id,
                                         sct->log_id_len);
    }

    FUNC1(out, "%*sSigned Certificate Timestamp:", indent, "");
    FUNC1(out, "\n%*sVersion   : ", indent + 4, "");

    if (sct->version != SCT_VERSION_V1) {
        FUNC1(out, "unknown\n%*s", indent + 16, "");
        FUNC0(out, indent + 16, 16, sct->sct, sct->sct_len);
        return;
    }

    FUNC1(out, "v1 (0x0)");

    if (log != NULL) {
        FUNC1(out, "\n%*sLog       : %s", indent + 4, "",
                   FUNC3(log));
    }

    FUNC1(out, "\n%*sLog ID    : ", indent + 4, "");
    FUNC0(out, indent + 16, 16, sct->log_id, sct->log_id_len);

    FUNC1(out, "\n%*sTimestamp : ", indent + 4, "");
    FUNC5(sct->timestamp, out);

    FUNC1(out, "\n%*sExtensions: ", indent + 4, "");
    if (sct->ext_len == 0)
        FUNC1(out, "none");
    else
        FUNC0(out, indent + 16, 16, sct->ext, sct->ext_len);

    FUNC1(out, "\n%*sSignature : ", indent + 4, "");
    FUNC4(sct, out);
    FUNC1(out, "\n%*s            ", indent + 4, "");
    FUNC0(out, indent + 16, 16, sct->sig, sct->sig_len);
}