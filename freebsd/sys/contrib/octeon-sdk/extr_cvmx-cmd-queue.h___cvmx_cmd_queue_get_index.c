
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cvmx_cmd_queue_id_t ;



__attribute__((used)) static inline int __cvmx_cmd_queue_get_index(cvmx_cmd_queue_id_t queue_id)
{




    int unit = queue_id>>16;
    int q = (queue_id >> 4) & 0xf;
    int core = queue_id & 0xf;
    return unit*256 + core*16 + q;
}
