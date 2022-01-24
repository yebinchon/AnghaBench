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
struct TYPE_8__ {scalar_t__ total_hits; scalar_t__ total_writes; scalar_t__ total_reads; } ;
typedef  TYPE_1__ svn_membuffer_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  hits; int /*<<< orphan*/  sets; int /*<<< orphan*/  gets; } ;
typedef  TYPE_2__ svn_cache__info_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC2(svn_membuffer_t *segment,
                                      svn_cache__info_t *info)
{
  info->gets += segment->total_reads;
  info->sets += segment->total_writes;
  info->hits += segment->total_hits;

  FUNC0(segment,
                  FUNC1(segment, info, TRUE));

  return SVN_NO_ERROR;
}