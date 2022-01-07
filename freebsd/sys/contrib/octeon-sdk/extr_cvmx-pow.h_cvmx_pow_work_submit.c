
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef void* uint64_t ;
typedef void* uint32_t ;
struct TYPE_17__ {void* grp; void* qos; scalar_t__ zero_2; } ;
struct TYPE_15__ {void* grp; void* qos; scalar_t__ zero_2; scalar_t__ zero_1; scalar_t__ zero_0; } ;
struct TYPE_14__ {void* tag_type; void* tag; } ;
struct TYPE_18__ {TYPE_4__ cn38xx; TYPE_2__ cn68xx; TYPE_1__ s; } ;
struct TYPE_21__ {TYPE_5__ word1; } ;
typedef TYPE_8__ cvmx_wqe_t ;
typedef void* cvmx_pow_tag_type_t ;
struct TYPE_19__ {void* grp; void* qos; void* tag; void* type; void* op; } ;
struct TYPE_16__ {void* grp; void* qos; void* tag; void* type; void* op; } ;
struct TYPE_22__ {scalar_t__ u64; TYPE_6__ s_cn38xx; TYPE_3__ s_cn68xx_add; } ;
typedef TYPE_9__ cvmx_pow_tag_req_t ;
struct TYPE_20__ {int is_io; int offset; int did; int mem_region; } ;
struct TYPE_13__ {scalar_t__ u64; TYPE_7__ sio; } ;
typedef TYPE_10__ cvmx_addr_t ;


 int CVMX_IO_SEG ;
 int CVMX_OCT_DID_TAG_TAG1 ;
 void* CVMX_POW_TAG_OP_ADDWQ ;
 int CVMX_SYNCWS ;
 int OCTEON_FEATURE_CN68XX_WQE ;
 int cvmx_ptr_to_phys (TYPE_8__*) ;
 int cvmx_write_io (scalar_t__,scalar_t__) ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static inline void cvmx_pow_work_submit(cvmx_wqe_t *wqp, uint32_t tag, cvmx_pow_tag_type_t tag_type, uint64_t qos, uint64_t grp)
{
    cvmx_addr_t ptr;
    cvmx_pow_tag_req_t tag_req;

    tag_req.u64 = 0;

    wqp->word1.s.tag = tag;
    wqp->word1.s.tag_type = tag_type;

    if (octeon_has_feature(OCTEON_FEATURE_CN68XX_WQE)) {

        wqp->word1.cn68xx.zero_0 = 0;
        wqp->word1.cn68xx.zero_1 = 0;
        wqp->word1.cn68xx.zero_2 = 0;
        wqp->word1.cn68xx.qos = qos;
        wqp->word1.cn68xx.grp = grp;

        tag_req.s_cn68xx_add.op = CVMX_POW_TAG_OP_ADDWQ;
        tag_req.s_cn68xx_add.type = tag_type;
        tag_req.s_cn68xx_add.tag = tag;
        tag_req.s_cn68xx_add.qos = qos;
        tag_req.s_cn68xx_add.grp = grp;
    } else {

        wqp->word1.cn38xx.zero_2 = 0;
        wqp->word1.cn38xx.qos = qos;
        wqp->word1.cn38xx.grp = grp;

        tag_req.s_cn38xx.op = CVMX_POW_TAG_OP_ADDWQ;
        tag_req.s_cn38xx.type = tag_type;
        tag_req.s_cn38xx.tag = tag;
        tag_req.s_cn38xx.qos = qos;
        tag_req.s_cn38xx.grp = grp;
    }

    ptr.u64 = 0;
    ptr.sio.mem_region = CVMX_IO_SEG;
    ptr.sio.is_io = 1;
    ptr.sio.did = CVMX_OCT_DID_TAG_TAG1;
    ptr.sio.offset = cvmx_ptr_to_phys(wqp);



    CVMX_SYNCWS;
    cvmx_write_io(ptr.u64, tag_req.u64);
}
