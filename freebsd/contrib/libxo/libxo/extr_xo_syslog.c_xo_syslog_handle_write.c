
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xo_ssize_t ;
struct TYPE_3__ {char* xb_curp; } ;
typedef TYPE_1__ xo_buffer_t ;


 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int xo_buf_left (TYPE_1__*) ;

__attribute__((used)) static xo_ssize_t
xo_syslog_handle_write (void *opaque, const char *data)
{
    xo_buffer_t *xbp = opaque;
    int len = strlen(data);
    int left = xo_buf_left(xbp);

    if (len > left - 1)
 len = left - 1;

    memcpy(xbp->xb_curp, data, len);
    xbp->xb_curp += len;
    *xbp->xb_curp = '\0';

    return len;
}
