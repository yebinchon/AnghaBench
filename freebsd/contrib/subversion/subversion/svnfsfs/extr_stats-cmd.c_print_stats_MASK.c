#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ count; scalar_t__ packed_size; } ;
struct TYPE_16__ {TYPE_3__ total; } ;
struct TYPE_20__ {scalar_t__ overhead_size; scalar_t__ count; scalar_t__ packed_size; scalar_t__ expanded_size; } ;
struct TYPE_21__ {double chain_len; TYPE_4__ total; scalar_t__ expanded_size; } ;
struct TYPE_17__ {scalar_t__ count; scalar_t__ sum; } ;
struct TYPE_18__ {TYPE_1__ total; } ;
struct TYPE_23__ {scalar_t__ count; scalar_t__ size; } ;
struct TYPE_22__ {scalar_t__ count; scalar_t__ size; } ;
struct TYPE_24__ {scalar_t__ count; scalar_t__ size; } ;
struct TYPE_25__ {int /*<<< orphan*/  dir_prop_rep_histogram; int /*<<< orphan*/  dir_prop_histogram; int /*<<< orphan*/  dir_rep_histogram; int /*<<< orphan*/  dir_histogram; int /*<<< orphan*/  file_prop_rep_histogram; int /*<<< orphan*/  file_prop_histogram; int /*<<< orphan*/  file_rep_histogram; int /*<<< orphan*/  file_histogram; int /*<<< orphan*/  rep_size_histogram; int /*<<< orphan*/  node_size_histogram; int /*<<< orphan*/  largest_changes; TYPE_11__ file_prop_rep_stats; TYPE_11__ dir_prop_rep_stats; TYPE_11__ file_rep_stats; TYPE_11__ dir_rep_stats; TYPE_5__ total_rep_stats; TYPE_2__ added_rep_size_histogram; TYPE_7__ file_node_stats; TYPE_6__ dir_node_stats; TYPE_8__ total_node_stats; scalar_t__ change_count; scalar_t__ change_len; scalar_t__ revision_count; scalar_t__ total_size; } ;
typedef  TYPE_9__ svn_fs_fs__stats_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 char* FUNC9 (scalar_t__,char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(svn_fs_fs__stats_t *stats,
            apr_pool_t *pool)
{
  /* print results */
  FUNC8("\n\nGlobal statistics:\n");
  FUNC8(FUNC0("%20s bytes in %12s revisions\n"
           "%20s bytes in %12s changes\n"
           "%20s bytes in %12s node revision records\n"
           "%20s bytes in %12s representations\n"
           "%20s bytes expanded representation size\n"
           "%20s bytes with rep-sharing off\n"),
         FUNC9(stats->total_size, ',', pool),
         FUNC9(stats->revision_count, ',', pool),
         FUNC9(stats->change_len, ',', pool),
         FUNC9(stats->change_count, ',', pool),
         FUNC9(stats->total_node_stats.size, ',', pool),
         FUNC9(stats->total_node_stats.count, ',', pool),
         FUNC9(stats->total_rep_stats.total.packed_size, ',',
                         pool),
         FUNC9(stats->total_rep_stats.total.count, ',', pool),
         FUNC9(stats->total_rep_stats.total.expanded_size, ',',
                         pool),
         FUNC9(stats->total_rep_stats.expanded_size, ',', pool));

  FUNC8("\nNoderev statistics:\n");
  FUNC8(FUNC0("%20s bytes in %12s nodes total\n"
           "%20s bytes in %12s directory noderevs\n"
           "%20s bytes in %12s file noderevs\n"),
         FUNC9(stats->total_node_stats.size, ',', pool),
         FUNC9(stats->total_node_stats.count, ',', pool),
         FUNC9(stats->dir_node_stats.size, ',', pool),
         FUNC9(stats->dir_node_stats.count, ',', pool),
         FUNC9(stats->file_node_stats.size, ',', pool),
         FUNC9(stats->file_node_stats.count, ',', pool));

  FUNC8("\nRepresentation statistics:\n");
  FUNC8(FUNC0("%20s bytes in %12s representations total\n"
           "%20s bytes in %12s directory representations\n"
           "%20s bytes in %12s file representations\n"
           "%20s bytes in %12s representations of added file nodes\n"
           "%20s bytes in %12s directory property representations\n"
           "%20s bytes in %12s file property representations\n"
           "                         with %12.3f average delta chain length\n"
           "%20s bytes in header & footer overhead\n"),
         FUNC9(stats->total_rep_stats.total.packed_size, ',',
                         pool),
         FUNC9(stats->total_rep_stats.total.count, ',', pool),
         FUNC9(stats->dir_rep_stats.total.packed_size, ',',
                         pool),
         FUNC9(stats->dir_rep_stats.total.count, ',', pool),
         FUNC9(stats->file_rep_stats.total.packed_size, ',',
                         pool),
         FUNC9(stats->file_rep_stats.total.count, ',', pool),
         FUNC9(stats->added_rep_size_histogram.total.sum, ',',
                         pool),
         FUNC9(stats->added_rep_size_histogram.total.count, ',',
                         pool),
         FUNC9(stats->dir_prop_rep_stats.total.packed_size, ',',
                         pool),
         FUNC9(stats->dir_prop_rep_stats.total.count, ',', pool),
         FUNC9(stats->file_prop_rep_stats.total.packed_size, ',',
                         pool),
         FUNC9(stats->file_prop_rep_stats.total.count, ',', pool),
         stats->total_rep_stats.chain_len
            / (double)stats->total_rep_stats.total.count,
         FUNC9(stats->total_rep_stats.total.overhead_size, ',',
                         pool));

  FUNC8("\nDirectory representation statistics:\n");
  FUNC7(&stats->dir_rep_stats, pool);
  FUNC8("\nFile representation statistics:\n");
  FUNC7(&stats->file_rep_stats, pool);
  FUNC8("\nDirectory property representation statistics:\n");
  FUNC7(&stats->dir_prop_rep_stats, pool);
  FUNC8("\nFile property representation statistics:\n");
  FUNC7(&stats->file_prop_rep_stats, pool);

  FUNC8("\nLargest representations:\n");
  FUNC6(stats->largest_changes, pool);
  FUNC8("\nExtensions by number of representations:\n");
  FUNC1(stats, pool);
  FUNC8("\nExtensions by size of changed files:\n");
  FUNC2(stats, pool);
  FUNC8("\nExtensions by size of representations:\n");
  FUNC3(stats, pool);

  FUNC8("\nHistogram of expanded node sizes:\n");
  FUNC4(&stats->node_size_histogram, pool);
  FUNC8("\nHistogram of representation sizes:\n");
  FUNC4(&stats->rep_size_histogram, pool);
  FUNC8("\nHistogram of file sizes:\n");
  FUNC4(&stats->file_histogram, pool);
  FUNC8("\nHistogram of file representation sizes:\n");
  FUNC4(&stats->file_rep_histogram, pool);
  FUNC8("\nHistogram of file property sizes:\n");
  FUNC4(&stats->file_prop_histogram, pool);
  FUNC8("\nHistogram of file property representation sizes:\n");
  FUNC4(&stats->file_prop_rep_histogram, pool);
  FUNC8("\nHistogram of directory sizes:\n");
  FUNC4(&stats->dir_histogram, pool);
  FUNC8("\nHistogram of directory representation sizes:\n");
  FUNC4(&stats->dir_rep_histogram, pool);
  FUNC8("\nHistogram of directory property sizes:\n");
  FUNC4(&stats->dir_prop_histogram, pool);
  FUNC8("\nHistogram of directory property representation sizes:\n");
  FUNC4(&stats->dir_prop_rep_histogram, pool);

  FUNC5(stats, pool);
}