#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* current; scalar_t__ status; scalar_t__ remaining; } ;
typedef  TYPE_1__ serf_databuf_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char**,scalar_t__*,int,int*) ; 

apr_status_t FUNC2(
    serf_databuf_t *databuf,
    int acceptable,
    int *found,
    const char **data,
    apr_size_t *len)
{
    apr_status_t status = FUNC0(databuf, len);
    if (status)
        return status;

    /* the returned line will start at the current position. */
    *data = databuf->current;

    /* read a line from the buffer, and adjust the various pointers. */
    FUNC1(&databuf->current, &databuf->remaining, acceptable,
                       found);

    /* the length matches the amount consumed by the readline */
    *len = databuf->current - *data;

    /* see serf_databuf_read's return condition */
    return databuf->remaining ? APR_SUCCESS : databuf->status;
}