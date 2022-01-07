
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_FPA_DFA_POOL ;
 int CVMX_FPA_DFA_POOL_SIZE ;
 int CVMX_FPA_OUTPUT_BUFFER_POOL ;
 int CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE ;
 int CVMX_FPA_PACKET_POOL ;
 int CVMX_FPA_PACKET_POOL_SIZE ;
 int CVMX_FPA_TIMER_POOL ;
 int CVMX_FPA_TIMER_POOL_SIZE ;
 int CVMX_FPA_WQE_POOL ;
 int CVMX_FPA_WQE_POOL_SIZE ;
 int __cvmx_helper_initialize_fpa (int ,int ,int,int ,int ,int,int ,int ,int,int ,int ,int,int ,int ,int) ;

int cvmx_helper_initialize_fpa(int packet_buffers, int work_queue_entries,
                               int pko_buffers, int tim_buffers, int dfa_buffers)
{
    return __cvmx_helper_initialize_fpa(
        -1, 0, packet_buffers,
        -1, 0, work_queue_entries,
        -1, 0, pko_buffers,
        -1, 0, tim_buffers,
        -1, 0, dfa_buffers);
}
