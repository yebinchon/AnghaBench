#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sa_query_result {scalar_t__ status; } ;
struct sa_handle {int dummy; } ;
typedef  int /*<<< orphan*/  pr ;
struct TYPE_7__ {int num_path; int /*<<< orphan*/  dgid; int /*<<< orphan*/  sgid; } ;
typedef  TYPE_1__ ib_path_rec_t ;
typedef  int /*<<< orphan*/  ib_net64_t ;
struct TYPE_8__ {int /*<<< orphan*/  raw; } ;
typedef  TYPE_2__ ib_gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_HALF_WORLD_PR_TIMEOUT ; 
 int /*<<< orphan*/  DGID ; 
 int EIO ; 
 int /*<<< orphan*/  IB_GID_GUID_F ; 
 int /*<<< orphan*/  IB_MAD_METHOD_GET_TABLE ; 
 scalar_t__ IB_SA_ATTR_PATHRECORD ; 
 scalar_t__ IB_SA_MAD_STATUS_SUCCESS ; 
 int /*<<< orphan*/  NUMBPATH ; 
 int /*<<< orphan*/  PR ; 
 int /*<<< orphan*/  REVERSIBLE ; 
 int /*<<< orphan*/  SGID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  ibd_sakey ; 
 int /*<<< orphan*/  ibd_timeout ; 
 int /*<<< orphan*/  FUNC4 (struct sa_query_result*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sa_handle*) ; 
 int /*<<< orphan*/  FUNC8 (struct sa_query_result*) ; 
 struct sa_handle* FUNC9 () ; 
 int FUNC10 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,struct sa_query_result*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(ib_gid_t sgid,uint64_t dguid)
{
     ib_path_rec_t pr;
     ib_net64_t comp_mask = 0;
     uint8_t reversible = 0;
     struct sa_handle * h;

     if (!(h = FUNC9()))
	return -1;

     ibd_timeout = DEFAULT_HALF_WORLD_PR_TIMEOUT;
     FUNC6(&pr, 0, sizeof(pr));

     FUNC0(sgid, pr.sgid, PR, SGID);
     if(dguid) {
	     FUNC5(sgid.raw, IB_GID_GUID_F, &dguid);
	     FUNC0(sgid, pr.dgid, PR, DGID);
     }

     FUNC1(1, 8, -1, pr.num_path, PR, NUMBPATH);/*to get only one PathRecord for each source and destination pair*/
     FUNC1(1, 8, -1, reversible, PR, REVERSIBLE);/*for a reversible path*/
     pr.num_path |= reversible << 7;
     struct sa_query_result result;
     int ret = FUNC10(h, IB_MAD_METHOD_GET_TABLE,
                        (uint16_t)IB_SA_ATTR_PATHRECORD,0,FUNC2(comp_mask),ibd_sakey,
                        &pr, sizeof(pr), &result);
     if (ret) {
             FUNC7(h);
             FUNC3(stderr, "Query SA failed: %s; sa call path_query failed\n", FUNC12(ret));
             return ret;
     }
     if (result.status != IB_SA_MAD_STATUS_SUCCESS) {
             FUNC11(result.status);
             ret = EIO;
             goto Exit;
     }

     FUNC4(&result);
Exit:
     FUNC7(h);
     FUNC8(&result);
     return ret;
}