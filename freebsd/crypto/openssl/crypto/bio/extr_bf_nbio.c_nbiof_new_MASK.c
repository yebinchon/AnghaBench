#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* ptr; int init; } ;
struct TYPE_5__ {int lrn; int lwn; } ;
typedef  TYPE_1__ NBIO_TEST ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_F_NBIOF_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(BIO *bi)
{
    NBIO_TEST *nt;

    if ((nt = FUNC1(sizeof(*nt))) == NULL) {
        FUNC0(BIO_F_NBIOF_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    nt->lrn = -1;
    nt->lwn = -1;
    bi->ptr = (char *)nt;
    bi->init = 1;
    return 1;
}