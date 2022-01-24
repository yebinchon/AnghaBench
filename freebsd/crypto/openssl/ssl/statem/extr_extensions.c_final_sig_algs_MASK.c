#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hit; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  SSL_F_FINAL_SIG_ALGS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SSL_R_MISSING_SIGALGS_EXTENSION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS13_AD_MISSING_EXTENSION ; 

__attribute__((used)) static int FUNC2(SSL *s, unsigned int context, int sent)
{
    if (!sent && FUNC0(s) && !s->hit) {
        FUNC1(s, TLS13_AD_MISSING_EXTENSION, SSL_F_FINAL_SIG_ALGS,
                 SSL_R_MISSING_SIGALGS_EXTENSION);
        return 0;
    }

    return 1;
}