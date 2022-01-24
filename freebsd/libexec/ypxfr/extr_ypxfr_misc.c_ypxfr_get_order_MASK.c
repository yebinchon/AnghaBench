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
struct TYPE_5__ {int stat; unsigned long ordernum; } ;
typedef  TYPE_1__ ypresp_order ;
struct TYPE_6__ {char* map; char* domain; } ;
typedef  TYPE_2__ ypreq_nokey ;
typedef  enum ypstat { ____Placeholder_ypstat } ypstat ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
#define  YPERR_DOMAIN 133 
#define  YPERR_MAP 132 
#define  YPERR_YPERR 131 
 int /*<<< orphan*/  YPPROG ; 
 int /*<<< orphan*/  YPVERS ; 
 scalar_t__ YPXFR_NODOM ; 
 scalar_t__ YPXFR_NOMAP ; 
 scalar_t__ YPXFR_RPC ; 
 scalar_t__ YPXFR_YPERR ; 
#define  YP_NODOM 130 
#define  YP_NOMAP 129 
 int YP_TRUE ; 
#define  YP_YPERR 128 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int yp_errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char*,unsigned int*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 

unsigned long
FUNC7(char *domain, char *map, char *source, const int yplib)
{
	if (yplib) {
		unsigned int order;
		int res;
		if ((res = FUNC5(domain, map, &order))) {
			switch (res) {
			case YPERR_DOMAIN:
				yp_errno = (enum ypstat)YPXFR_NODOM;
				break;
			case YPERR_MAP:
				yp_errno = (enum ypstat)YPXFR_NOMAP;
				break;
			case YPERR_YPERR:
			default:
				yp_errno = (enum ypstat)YPXFR_YPERR;
				break;
			}
			return(0);
		} else
			return(order);
	} else {
		CLIENT *clnt;
		ypresp_order *resp;
		ypreq_nokey req;

		if ((clnt = FUNC0(source,YPPROG,YPVERS,"udp")) == NULL) {
			FUNC4("%s",FUNC2("couldn't create \
udp handle to ypserv"));
			yp_errno = (enum ypstat)YPXFR_RPC;
			return(0);
		}
		req.map = map;
		req.domain = domain;
		if ((resp = FUNC6(&req, clnt)) == NULL) {
			FUNC4("%s", FUNC3(clnt, "YPPROC_ORDER \
failed"));
			FUNC1(clnt);
			yp_errno = (enum ypstat)YPXFR_RPC;
			return(0);
		}
		FUNC1(clnt);
		if (resp->stat != YP_TRUE) {
			switch (resp->stat) {
			case YP_NODOM:
				yp_errno = (enum ypstat)YPXFR_NODOM;
				break;
			case YP_NOMAP:
				yp_errno = (enum ypstat)YPXFR_NOMAP;
				break;
			case YP_YPERR:
			default:
				yp_errno = (enum ypstat)YPXFR_YPERR;
				break;
			}
			return(0);
		}
		return(resp->ordernum);
	}
}