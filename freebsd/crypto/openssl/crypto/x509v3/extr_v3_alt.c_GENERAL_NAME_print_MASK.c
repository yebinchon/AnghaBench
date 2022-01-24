#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rid; TYPE_1__* ip; int /*<<< orphan*/  dirn; int /*<<< orphan*/  ia5; } ;
struct TYPE_7__ {int type; TYPE_2__ d; } ;
struct TYPE_5__ {unsigned char* data; int length; } ;
typedef  TYPE_3__ GENERAL_NAME ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
#define  GEN_DIRNAME 136 
#define  GEN_DNS 135 
#define  GEN_EDIPARTY 134 
#define  GEN_EMAIL 133 
#define  GEN_IPADD 132 
#define  GEN_OTHERNAME 131 
#define  GEN_RID 130 
#define  GEN_URI 129 
#define  GEN_X400 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XN_FLAG_ONELINE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(BIO *out, GENERAL_NAME *gen)
{
    unsigned char *p;
    int i;
    switch (gen->type) {
    case GEN_OTHERNAME:
        FUNC1(out, "othername:<unsupported>");
        break;

    case GEN_X400:
        FUNC1(out, "X400Name:<unsupported>");
        break;

    case GEN_EDIPARTY:
        /* Maybe fix this: it is supported now */
        FUNC1(out, "EdiPartyName:<unsupported>");
        break;

    case GEN_EMAIL:
        FUNC1(out, "email:");
        FUNC0(out, gen->d.ia5);
        break;

    case GEN_DNS:
        FUNC1(out, "DNS:");
        FUNC0(out, gen->d.ia5);
        break;

    case GEN_URI:
        FUNC1(out, "URI:");
        FUNC0(out, gen->d.ia5);
        break;

    case GEN_DIRNAME:
        FUNC1(out, "DirName:");
        FUNC3(out, gen->d.dirn, 0, XN_FLAG_ONELINE);
        break;

    case GEN_IPADD:
        p = gen->d.ip->data;
        if (gen->d.ip->length == 4)
            FUNC1(out, "IP Address:%d.%d.%d.%d", p[0], p[1], p[2], p[3]);
        else if (gen->d.ip->length == 16) {
            FUNC1(out, "IP Address");
            for (i = 0; i < 8; i++) {
                FUNC1(out, ":%X", p[0] << 8 | p[1]);
                p += 2;
            }
            FUNC2(out, "\n");
        } else {
            FUNC1(out, "IP Address:<invalid>");
            break;
        }
        break;

    case GEN_RID:
        FUNC1(out, "Registered ID:");
        FUNC4(out, gen->d.rid);
        break;
    }
    return 1;
}