#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  peer ;
struct TYPE_9__ {int /*<<< orphan*/  _errno; int /*<<< orphan*/  connected; scalar_t__ peekmode; } ;
typedef  TYPE_1__ bio_dgram_data ;
struct TYPE_10__ {int /*<<< orphan*/  num; scalar_t__ ptr; } ;
typedef  int /*<<< orphan*/  BIO_ADDR ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BIO_CTRL_DGRAM_SET_PEER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int MSG_PEEK ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC11(BIO *b, char *out, int outl)
{
    int ret = 0;
    bio_dgram_data *data = (bio_dgram_data *)b->ptr;
    int flags = 0;

    BIO_ADDR peer;
    socklen_t len = sizeof(peer);

    if (out != NULL) {
        FUNC5();
        FUNC9(&peer, 0, sizeof(peer));
        FUNC6(b);
        if (data->peekmode)
            flags = MSG_PEEK;
        ret = FUNC10(b->num, out, outl, flags,
                       FUNC0(&peer), &len);

        if (!data->connected && ret >= 0)
            FUNC2(b, BIO_CTRL_DGRAM_SET_PEER, 0, &peer);

        FUNC1(b);
        if (ret < 0) {
            if (FUNC3(ret)) {
                FUNC4(b);
                data->_errno = FUNC8();
            }
        }

        FUNC7(b);
    }
    return ret;
}