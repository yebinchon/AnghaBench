#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ssl_x509_store_ctx_idx ; 
 int /*<<< orphan*/  ssl_x509_store_ctx_init ; 
 int /*<<< orphan*/  ssl_x509_store_ctx_once ; 

int FUNC1(void)
{

    if (!FUNC0(&ssl_x509_store_ctx_once, ssl_x509_store_ctx_init))
        return -1;
    return ssl_x509_store_ctx_idx;
}