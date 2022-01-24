#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z_stream ;
typedef  void* uInt ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct zbaton {int /*<<< orphan*/  substream; TYPE_1__* out; int /*<<< orphan*/ * pool; } ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {scalar_t__ avail_in; int avail_out; int /*<<< orphan*/  msg; void* next_out; int /*<<< orphan*/ * next_in; int /*<<< orphan*/ * opaque; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  zalloc ; 
 int /*<<< orphan*/  zfree ; 

__attribute__((used)) static svn_error_t *
FUNC8(void *baton, const char *buffer, apr_size_t *len)
{
  struct zbaton *btn = baton;
  apr_pool_t *subpool;
  void *write_buf;
  apr_size_t buf_size, write_len;
  int zerr;

  if (btn->out == NULL)
    {
      btn->out = FUNC1(btn->pool, sizeof(z_stream));
      btn->out->zalloc = zalloc;
      btn->out->zfree = zfree;
      btn->out->opaque =  btn->pool;

      zerr = FUNC3(btn->out, Z_DEFAULT_COMPRESSION);
      FUNC0(FUNC4(zerr, "deflateInit", btn->out->msg));
    }

  /* The largest buffer we should need is 0.1% larger than the
     compressed data, + 12 bytes. This info comes from zlib.h.  */
  buf_size = *len + (*len / 1000) + 13;
  subpool = FUNC5(btn->pool);
  write_buf = FUNC1(subpool, buf_size);

  btn->out->next_in = (Bytef *) buffer;  /* Casting away const! */
  btn->out->avail_in = (uInt) *len;

  while (btn->out->avail_in > 0)
    {
      btn->out->next_out = write_buf;
      btn->out->avail_out = (uInt) buf_size;

      zerr = FUNC2(btn->out, Z_NO_FLUSH);
      FUNC0(FUNC4(zerr, "deflate", btn->out->msg));
      write_len = buf_size - btn->out->avail_out;
      if (write_len > 0)
        FUNC0(FUNC7(btn->substream, write_buf, &write_len));
    }

  FUNC6(subpool);

  return SVN_NO_ERROR;
}