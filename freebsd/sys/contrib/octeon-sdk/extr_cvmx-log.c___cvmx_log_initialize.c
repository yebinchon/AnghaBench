
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAST64 (int *) ;
 int CVMX_LOG_BUFFER_SIZE ;
 int CVMX_LOG_NUM_BUFFERS ;
 int * cvmx_log_buffer_end_ptr ;
 int * cvmx_log_buffer_head_ptr ;
 int * cvmx_log_buffer_write_ptr ;
 int ** cvmx_log_buffers ;

__attribute__((used)) static void __cvmx_log_initialize(void)
{
    int buf_num;


    for (buf_num=0; buf_num<CVMX_LOG_NUM_BUFFERS-1; buf_num++)
        cvmx_log_buffers[buf_num][CVMX_LOG_BUFFER_SIZE-1] = CAST64(cvmx_log_buffers[buf_num+1]);
    cvmx_log_buffers[CVMX_LOG_NUM_BUFFERS-1][CVMX_LOG_BUFFER_SIZE-1] = CAST64(((void*)0));

    cvmx_log_buffer_head_ptr = &cvmx_log_buffers[0][0];
    cvmx_log_buffer_write_ptr = &cvmx_log_buffers[0][0];
    cvmx_log_buffer_end_ptr = cvmx_log_buffer_write_ptr + CVMX_LOG_BUFFER_SIZE-1;
}
