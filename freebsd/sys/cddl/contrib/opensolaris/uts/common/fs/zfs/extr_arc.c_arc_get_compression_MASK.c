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
typedef  enum zio_compress { ____Placeholder_zio_compress } zio_compress ;
struct TYPE_4__ {int /*<<< orphan*/  b_hdr; } ;
typedef  TYPE_1__ arc_buf_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ZIO_COMPRESS_OFF ; 

enum zio_compress
FUNC2(arc_buf_t *buf)
{
	return (FUNC0(buf) ?
	    FUNC1(buf->b_hdr) : ZIO_COMPRESS_OFF);
}