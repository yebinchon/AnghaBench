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
struct TYPE_6__ {int nid; } ;
struct TYPE_5__ {int /*<<< orphan*/  algorithm_mkey; } ;
typedef  TYPE_1__ SSL_CIPHER ;

/* Variables and functions */
 int NID_undef ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* ssl_cipher_table_kx ; 

int FUNC1(const SSL_CIPHER *c)
{
    int i = FUNC0(ssl_cipher_table_kx, c->algorithm_mkey);

    if (i == -1)
        return NID_undef;
    return ssl_cipher_table_kx[i].nid;
}