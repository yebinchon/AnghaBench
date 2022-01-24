#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  num ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  TYPE_4__* gss_channel_bindings_t ;
struct TYPE_8__ {int length; int /*<<< orphan*/ * value; } ;
struct TYPE_7__ {int length; int /*<<< orphan*/ * value; } ;
struct TYPE_6__ {int length; int /*<<< orphan*/ * value; } ;
struct TYPE_9__ {int initiator_addrtype; int acceptor_addrtype; TYPE_3__ application_data; TYPE_2__ acceptor_address; TYPE_1__ initiator_address; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC7 (const gss_channel_bindings_t b,
			  u_char *p)
{
  u_char num[4];
  EVP_MD_CTX *ctx;

  ctx = FUNC3();
  FUNC1(ctx, FUNC5(), NULL);

  FUNC6 (b->initiator_addrtype, num);
  FUNC2(ctx, num, sizeof(num));
  FUNC6 (b->initiator_address.length, num);
  FUNC2(ctx, num, sizeof(num));
  if (b->initiator_address.length)
      FUNC2(ctx,
		       b->initiator_address.value,
		       b->initiator_address.length);
  FUNC6 (b->acceptor_addrtype, num);
  FUNC2(ctx, num, sizeof(num));
  FUNC6 (b->acceptor_address.length, num);
  FUNC2(ctx, num, sizeof(num));
  if (b->acceptor_address.length)
      FUNC2(ctx,
		       b->acceptor_address.value,
		       b->acceptor_address.length);
  FUNC6 (b->application_data.length, num);
  FUNC2(ctx, num, sizeof(num));
  if (b->application_data.length)
      FUNC2(ctx,
		       b->application_data.value,
		       b->application_data.length);
  FUNC0(ctx, p, NULL);
  FUNC4(ctx);

  return 0;
}