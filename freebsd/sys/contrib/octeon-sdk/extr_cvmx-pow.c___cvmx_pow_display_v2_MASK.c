#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_15__ ;
typedef  struct TYPE_21__   TYPE_14__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  entry_list ;
struct TYPE_22__ {TYPE_14__** smemload; TYPE_9__** sindexload; TYPE_7__** sstatus; } ;
typedef  TYPE_15__ __cvmx_pow_dump_t ;
struct TYPE_30__ {int /*<<< orphan*/  queue_tail; int /*<<< orphan*/  queue_head; int /*<<< orphan*/  queue_one; int /*<<< orphan*/  queue_val; } ;
struct TYPE_23__ {int queue_val; int queue_one; int queue_head; int queue_tail; int qnum_head; int qnum_tail; } ;
struct TYPE_31__ {TYPE_8__ sindexload0_cn68xx; TYPE_1__ sindexload1_cn68xx; } ;
struct TYPE_28__ {int pend_wqp; scalar_t__ pend_nosched_clr; } ;
struct TYPE_27__ {int pend_switch; int pend_desched; int pend_nosched; int pend_alloc_we; int pend_nosched_clr; int pend_index; scalar_t__ pend_type; int pend_tag; scalar_t__ pend_get_work_wait; scalar_t__ pend_get_work; } ;
struct TYPE_26__ {int revlink_index; int link_index; scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_25__ {scalar_t__ tag_type; int tag; int index; int grp; } ;
struct TYPE_24__ {int wqp; } ;
struct TYPE_29__ {TYPE_6__ s_sstatus1_cn68xx; TYPE_5__ s_sstatus0_cn68xx; TYPE_4__ s_sstatus4_cn68xx; TYPE_3__ s_sstatus2_cn68xx; TYPE_2__ s_sstatus3_cn68xx; } ;
struct TYPE_20__ {scalar_t__ pend_type; int pend_tag; scalar_t__ pend_switch; } ;
struct TYPE_19__ {int grp; int wqp; int nosched; } ;
struct TYPE_18__ {int fwd_index; } ;
struct TYPE_17__ {scalar_t__ tag_type; int tag; scalar_t__ tail; } ;
struct TYPE_21__ {TYPE_13__ s_smemload2_cn68xx; TYPE_12__ s_smemload1_cn68xx; TYPE_11__ s_smemload3_cn68xx; TYPE_10__ s_smemload0_cn68xx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CVMX_POW_LIST_CORE ; 
 int CVMX_POW_LIST_DESCHED ; 
 scalar_t__ CVMX_POW_LIST_FREE ; 
 int CVMX_POW_LIST_INPUT ; 
 int CVMX_POW_LIST_NOSCHED ; 
 scalar_t__ CVMX_POW_TAG_TYPE_NULL_NULL ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_15__*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,scalar_t__,size_t*) ; 
 char** __cvmx_pow_list_names ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (size_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

void FUNC10(void *buffer, int buffer_size)
{
    __cvmx_pow_dump_t *dump = (__cvmx_pow_dump_t*)buffer;
    int num_pow_entries = FUNC7();
    int num_cores;
    int core;
    int index;
    uint8_t entry_list[2048];

    if (buffer_size < (int)sizeof(__cvmx_pow_dump_t))
    {
        FUNC5("cvmx_pow_dump: Buffer too small, pow_dump_t = 0x%x, buffer_size = 0x%x\n", (int)sizeof(__cvmx_pow_dump_t), buffer_size);
        return;
    }

    FUNC8(entry_list, 0, sizeof(entry_list));
    num_cores = FUNC6();

    /* Print the free list info */
    {
        int valid[3], has_one[3], head[3], tail[3], qnum_head, qnum_tail;
        int idx;

        valid[0] = dump->sindexload[0][4].sindexload1_cn68xx.queue_val;
        valid[1] = dump->sindexload[0][5].sindexload1_cn68xx.queue_val;
        valid[2] = dump->sindexload[0][6].sindexload1_cn68xx.queue_val;
        has_one[0] = dump->sindexload[0][4].sindexload1_cn68xx.queue_one;
        has_one[1] = dump->sindexload[0][5].sindexload1_cn68xx.queue_one;
        has_one[2] = dump->sindexload[0][6].sindexload1_cn68xx.queue_one;
        head[0] = dump->sindexload[0][4].sindexload1_cn68xx.queue_head;
        head[1] = dump->sindexload[0][5].sindexload1_cn68xx.queue_head;
        head[2] = dump->sindexload[0][6].sindexload1_cn68xx.queue_head;
        tail[0] = dump->sindexload[0][4].sindexload1_cn68xx.queue_tail;
        tail[1] = dump->sindexload[0][5].sindexload1_cn68xx.queue_tail;
        tail[2] = dump->sindexload[0][6].sindexload1_cn68xx.queue_tail;
        qnum_head = dump->sindexload[0][4].sindexload1_cn68xx.qnum_head;
        qnum_tail = dump->sindexload[0][4].sindexload1_cn68xx.qnum_tail;

        FUNC9("Free List: qnum_head=%d, qnum_tail=%d\n", qnum_head, qnum_tail);
        FUNC9("Free0: valid=%d, one=%d, head=%llu, tail=%llu\n", valid[0], has_one[0], FUNC0(head[0]), FUNC0(tail[0]));
        FUNC9("Free1: valid=%d, one=%d, head=%llu, tail=%llu\n", valid[1], has_one[1], FUNC0(head[1]), FUNC0(tail[1]));
        FUNC9("Free2: valid=%d, one=%d, head=%llu, tail=%llu\n", valid[2], has_one[2], FUNC0(head[2]), FUNC0(tail[2]));
        
        idx=qnum_head;
        while (valid[0] || valid[1] || valid[2])
        {
            int qidx = idx % 3;

            if (head[qidx] == tail[qidx])
                valid[qidx] = 0;

            if (FUNC4(head[qidx], CVMX_POW_LIST_FREE, entry_list))   
                break;
            head[qidx] = dump->smemload[head[qidx]][4].s_smemload3_cn68xx.fwd_index;
            //printf("qidx = %d, idx = %d, head[qidx] = %d\n", qidx, idx, head[qidx]);
            idx++;
        }
    }
            
    /* Print the core state */
    for (core = 0; core < num_cores; core++)
    {
        int pendtag = 1;
        int pendwqp = 2;
        int tag = 3;
        int wqp = 4;
        int links = 5;

        FUNC9("Core %d State: tag=%s,0x%08x", core, 
               FUNC1(dump->sstatus[core][tag].s_sstatus2_cn68xx.tag_type),
               dump->sstatus[core][tag].s_sstatus2_cn68xx.tag);
        if (dump->sstatus[core][tag].s_sstatus2_cn68xx.tag_type != CVMX_POW_TAG_TYPE_NULL_NULL)
        {
            FUNC4(dump->sstatus[core][tag].s_sstatus2_cn68xx.index, CVMX_POW_LIST_CORE + core, entry_list);
            FUNC9(" grp=%d",                   dump->sstatus[core][tag].s_sstatus2_cn68xx.grp);
            FUNC9(" wqp=0x%016llx",            FUNC0(dump->sstatus[core][wqp].s_sstatus3_cn68xx.wqp));
            FUNC9(" index=%d",                 dump->sstatus[core][tag].s_sstatus2_cn68xx.index);
            if (dump->sstatus[core][links].s_sstatus4_cn68xx.head)
                FUNC9(" head");
            else
                FUNC9(" prev=%d", dump->sstatus[core][links].s_sstatus4_cn68xx.revlink_index);
            if (dump->sstatus[core][links].s_sstatus4_cn68xx.tail)
                FUNC9(" tail");
            else
                FUNC9(" next=%d", dump->sstatus[core][links].s_sstatus4_cn68xx.link_index);
        }
        if (dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_switch)
        {
            FUNC9(" pend_switch=%d",           dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_switch);
        }
                                                                                
        if (dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_desched)
        {
            FUNC9(" pend_desched=%d",          dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_desched);
            FUNC9(" pend_nosched=%d",          dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_nosched);
        }
        if (dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_get_work)
        {
            if (dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_get_work_wait)
                FUNC9(" (Waiting for work)");
            else
                FUNC9(" (Getting work)");
        }
        if (dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_alloc_we)
            FUNC9(" pend_alloc_we=%d",          dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_alloc_we);
        if (dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_nosched_clr)
        {
            FUNC9(" pend_nosched_clr=%d",      dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_nosched_clr);
            FUNC9(" pend_index=%d",            dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_index);
        }
        if (dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_switch)
        {
            FUNC9(" pending tag=%s,0x%08x",
                   FUNC1(dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_type),
                   dump->sstatus[core][pendtag].s_sstatus0_cn68xx.pend_tag);
        }
        if (dump->sstatus[core][pendwqp].s_sstatus1_cn68xx.pend_nosched_clr)
            FUNC9(" pend_wqp=0x%016llx\n",     FUNC0(dump->sstatus[core][pendwqp].s_sstatus1_cn68xx.pend_wqp));
        FUNC9("\n");
    }

    /* Print out the state of the nosched list and the 16 deschedule lists. */
    FUNC3(CVMX_POW_LIST_NOSCHED, dump, entry_list,
                            dump->sindexload[0][3].sindexload0_cn68xx.queue_val,
                            dump->sindexload[0][3].sindexload0_cn68xx.queue_one,
                            dump->sindexload[0][3].sindexload0_cn68xx.queue_head,
                            dump->sindexload[0][3].sindexload0_cn68xx.queue_tail);
    for (index=0; index<64; index++)
    {
        FUNC3(CVMX_POW_LIST_DESCHED + index, dump, entry_list,
                                dump->sindexload[index][2].sindexload0_cn68xx.queue_val,
                                dump->sindexload[index][2].sindexload0_cn68xx.queue_one,
                                dump->sindexload[index][2].sindexload0_cn68xx.queue_head,
                                dump->sindexload[index][2].sindexload0_cn68xx.queue_tail);
    }

    /* Print out the state of the 8 internal input queues */
    for (index=0; index<8; index++)
    {
        FUNC3(CVMX_POW_LIST_INPUT + index, dump, entry_list,
                                dump->sindexload[index][1].sindexload0_cn68xx.queue_val,
                                dump->sindexload[index][1].sindexload0_cn68xx.queue_one,
                                dump->sindexload[index][1].sindexload0_cn68xx.queue_head,
                                dump->sindexload[index][1].sindexload0_cn68xx.queue_tail);
    }

    /* Print out the state of the 16 memory queues */
    for (index=0; index<8; index++)
    {
        const char *name;
        if (dump->sindexload[index][1].sindexload0_cn68xx.queue_head)
            name = "Queue %da Memory (is head)";
        else
            name = "Queue %da Memory";
        FUNC2(name, index,
                                dump->sindexload[index][1].sindexload0_cn68xx.queue_val,
                                dump->sindexload[index][1].sindexload0_cn68xx.queue_one,
                                dump->sindexload[index][1].sindexload0_cn68xx.queue_head,
                                dump->sindexload[index][1].sindexload0_cn68xx.queue_tail);
        if (dump->sindexload[index+8][1].sindexload0_cn68xx.queue_head)
            name = "Queue %db Memory (is head)";
        else
            name = "Queue %db Memory";
        FUNC2(name, index,
                                dump->sindexload[index+8][1].sindexload0_cn68xx.queue_val,
                                dump->sindexload[index+8][1].sindexload0_cn68xx.queue_one,
                                dump->sindexload[index+8][1].sindexload0_cn68xx.queue_head,
                                dump->sindexload[index+8][1].sindexload0_cn68xx.queue_tail);
    }

    /* Print out each of the internal POW entries. Each entry has a tag, group,
       wqe, and possibly a next pointer. The next pointer is only valid if this
       entry isn't make as a tail */
    for (index=0; index<num_pow_entries; index++)
    {
        FUNC9("Entry %d(%-10s): tag=%s,0x%08x grp=%d wqp=0x%016llx", index,
               __cvmx_pow_list_names[entry_list[index]],
               FUNC1(dump->smemload[index][1].s_smemload0_cn68xx.tag_type),
               dump->smemload[index][1].s_smemload0_cn68xx.tag,
               dump->smemload[index][2].s_smemload1_cn68xx.grp,
               FUNC0(dump->smemload[index][2].s_smemload1_cn68xx.wqp));
        if (dump->smemload[index][1].s_smemload0_cn68xx.tail)
            FUNC9(" tail");
        else
            FUNC9(" next=%d", dump->smemload[index][4].s_smemload3_cn68xx.fwd_index);
        if (entry_list[index] >= CVMX_POW_LIST_DESCHED)
        {
            FUNC9(" prev=%d", dump->smemload[index][4].s_smemload3_cn68xx.fwd_index);
            FUNC9(" nosched=%d", dump->smemload[index][1].s_smemload1_cn68xx.nosched);
            if (dump->smemload[index][3].s_smemload2_cn68xx.pend_switch)
            {
                FUNC9(" pending tag=%s,0x%08x",
                       FUNC1(dump->smemload[index][3].s_smemload2_cn68xx.pend_type),
                       dump->smemload[index][3].s_smemload2_cn68xx.pend_tag);
            }
        }
        FUNC9("\n");
    }
}