
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int is_io; int qos_grp; int opcode; int did; void* mem_region; } ;
struct TYPE_11__ {int is_io; int index; int opcode; int did; void* mem_region; } ;
struct TYPE_9__ {int is_io; int coreid; int opcode; int did; void* mem_region; } ;
struct TYPE_15__ {scalar_t__ u64; TYPE_5__ sindexload_cn68xx; TYPE_3__ smemload_cn68xx; TYPE_1__ sstatus_cn68xx; } ;
typedef TYPE_7__ cvmx_pow_load_addr_t ;
struct TYPE_16__ {TYPE_6__** sindexload; TYPE_4__** smemload; TYPE_2__** sstatus; } ;
typedef TYPE_8__ __cvmx_pow_dump_t ;
struct TYPE_14__ {void* u64; } ;
struct TYPE_12__ {void* u64; } ;
struct TYPE_10__ {void* u64; } ;


 void* CVMX_IO_SEG ;
 int CVMX_OCT_DID_TAG_TAG2 ;
 int CVMX_OCT_DID_TAG_TAG3 ;
 int CVMX_OCT_DID_TAG_TAG5 ;
 int cvmx_dprintf (char*) ;
 int cvmx_octeon_num_cores () ;
 int cvmx_pow_get_num_entries () ;
 void* cvmx_read_csr (scalar_t__) ;

__attribute__((used)) static int __cvmx_pow_capture_v2(void *buffer, int buffer_size)
{
    __cvmx_pow_dump_t *dump = (__cvmx_pow_dump_t*)buffer;
    int num_cores;
    int num_pow_entries = cvmx_pow_get_num_entries();
    int core;
    int index;
    int bits;

    if (buffer_size < (int)sizeof(__cvmx_pow_dump_t))
    {
        cvmx_dprintf("cvmx_pow_capture: Buffer too small\n");
        return -1;
    }

    num_cores = cvmx_octeon_num_cores();


    for (core=0; core<num_cores; core++)
    {
        cvmx_pow_load_addr_t load_addr;
        load_addr.u64 = 0;
        load_addr.sstatus_cn68xx.mem_region = CVMX_IO_SEG;
        load_addr.sstatus_cn68xx.is_io = 1;
        load_addr.sstatus_cn68xx.did = CVMX_OCT_DID_TAG_TAG5;
        load_addr.sstatus_cn68xx.coreid = core;
        for (bits=1; bits<6; bits++)
        {
            load_addr.sstatus_cn68xx.opcode = bits;
            dump->sstatus[core][bits].u64 = cvmx_read_csr(load_addr.u64);
        }
    }

    for (index=0; index<num_pow_entries; index++)
    {
        cvmx_pow_load_addr_t load_addr;
        load_addr.u64 = 0;
        load_addr.smemload_cn68xx.mem_region = CVMX_IO_SEG;
        load_addr.smemload_cn68xx.is_io = 1;
        load_addr.smemload_cn68xx.did = CVMX_OCT_DID_TAG_TAG2;
        load_addr.smemload_cn68xx.index = index;
        for (bits=1; bits<5; bits++)
        {
            load_addr.smemload_cn68xx.opcode = bits;
            dump->smemload[index][bits].u64 = cvmx_read_csr(load_addr.u64);
        }
    }


    for (index=0; index<64; index++)
    {
        cvmx_pow_load_addr_t load_addr;
        load_addr.u64 = 0;
        load_addr.sindexload_cn68xx.mem_region = CVMX_IO_SEG;
        load_addr.sindexload_cn68xx.is_io = 1;
        load_addr.sindexload_cn68xx.did = CVMX_OCT_DID_TAG_TAG3;
        load_addr.sindexload_cn68xx.qos_grp = index;
        for (bits=1; bits<7; bits++)
        {
            load_addr.sindexload_cn68xx.opcode = bits;
            dump->sindexload[index][bits].u64 = cvmx_read_csr(load_addr.u64);
        }
    }
    return 0;
}
