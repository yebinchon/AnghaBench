
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_fd_non_fatal_error (int) ;
 int get_last_sys_error () ;

int BIO_fd_should_retry(int i)
{
    int err;

    if ((i == 0) || (i == -1)) {
        err = get_last_sys_error();

        return BIO_fd_non_fatal_error(err);
    }
    return 0;
}
