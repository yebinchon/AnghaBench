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
typedef  int /*<<< orphan*/  hx509_peer_info ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_8__ {int num_strings; int /*<<< orphan*/ * strings; } ;
typedef  TYPE_1__ getarg_strings ;
struct TYPE_9__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_2__ AlgorithmIdentifier ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(hx509_context contextp,
	     hx509_peer_info *peer,
	     const getarg_strings *s)
{
    AlgorithmIdentifier *val;
    int ret, i;

    ret = FUNC5(contextp, peer);
    if (ret)
	FUNC4(contextp, 1, ret, "hx509_peer_info_alloc");

    val = FUNC0(s->num_strings, sizeof(*val));
    if (val == NULL)
	FUNC1(1, "malloc");

    for (i = 0; i < s->num_strings; i++)
	FUNC7(s->strings[i], NULL, &val[i].algorithm);

    ret = FUNC6(contextp, *peer, val, s->num_strings);
    if (ret)
	FUNC4(contextp, 1, ret, "hx509_peer_info_set_cms_algs");

    for (i = 0; i < s->num_strings; i++)
	FUNC3(&val[i]);
    FUNC2(val);
}