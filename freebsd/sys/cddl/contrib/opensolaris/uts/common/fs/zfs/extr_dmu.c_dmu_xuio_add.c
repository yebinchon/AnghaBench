
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {struct iovec* uio_iov; } ;
struct TYPE_10__ {TYPE_2__ xu_uio; } ;
typedef TYPE_1__ xuio_t ;
typedef TYPE_2__ uio_t ;
struct iovec {char* iov_base; size_t iov_len; } ;
typedef scalar_t__ offset_t ;
struct TYPE_12__ {int cnt; TYPE_4__** bufs; int next; } ;
typedef TYPE_3__ dmu_xuio_t ;
struct TYPE_13__ {scalar_t__ b_data; } ;
typedef TYPE_4__ arc_buf_t ;


 int ASSERT (int) ;
 TYPE_3__* XUIO_XUZC_PRIV (TYPE_1__*) ;
 scalar_t__ arc_buf_lsize (TYPE_4__*) ;

int
dmu_xuio_add(xuio_t *xuio, arc_buf_t *abuf, offset_t off, size_t n)
{
 struct iovec *iov;
 uio_t *uio = &xuio->xu_uio;
 dmu_xuio_t *priv = XUIO_XUZC_PRIV(xuio);
 int i = priv->next++;

 ASSERT(i < priv->cnt);
 ASSERT(off + n <= arc_buf_lsize(abuf));
 iov = uio->uio_iov + i;
 iov->iov_base = (char *)abuf->b_data + off;
 iov->iov_len = n;
 priv->bufs[i] = abuf;
 return (0);
}
