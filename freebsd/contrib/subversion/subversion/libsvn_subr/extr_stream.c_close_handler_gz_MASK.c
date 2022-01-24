#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct zbaton {int /*<<< orphan*/  substream; TYPE_2__* out; int /*<<< orphan*/  pool; TYPE_1__* in; } ;
typedef  scalar_t__ apr_size_t ;
struct TYPE_5__ {scalar_t__ avail_out; int /*<<< orphan*/  msg; void* next_out; } ;
struct TYPE_4__ {int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__ ZBUFFER_SIZE ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 void* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,scalar_t__*) ; 

__attribute__((used)) static svn_error_t *
FUNC9(void *baton)
{
  struct zbaton *btn = baton;
  int zerr;

  if (btn->in != NULL)
    {
      zerr = FUNC4(btn->in);
      FUNC0(FUNC5(zerr, "inflateEnd", btn->in->msg));
    }

  if (btn->out != NULL)
    {
      void *buf;
      apr_size_t write_len;

      buf = FUNC1(btn->pool, ZBUFFER_SIZE);

      while (TRUE)
        {
          btn->out->next_out = buf;
          btn->out->avail_out = ZBUFFER_SIZE;

          zerr = FUNC2(btn->out, Z_FINISH);
          if (zerr != Z_STREAM_END && zerr != Z_OK)
            return FUNC6(FUNC5(zerr, "deflate",
                                                        btn->out->msg));
          write_len = ZBUFFER_SIZE - btn->out->avail_out;
          if (write_len > 0)
            FUNC0(FUNC8(btn->substream, buf, &write_len));
          if (zerr == Z_STREAM_END)
            break;
        }

      zerr = FUNC3(btn->out);
      FUNC0(FUNC5(zerr, "deflateEnd", btn->out->msg));
    }

  return FUNC6(FUNC7(btn->substream));
}