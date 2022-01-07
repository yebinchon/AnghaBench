
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xb_curp; } ;
typedef TYPE_1__ xo_buffer_t ;
typedef scalar_t__ ssize_t ;


 int memcpy (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int xo_buf_has_room (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static inline void
xo_buf_append_str (xo_buffer_t *xbp, const char *str)
{
    ssize_t len = strlen(str);

    if (!xo_buf_has_room(xbp, len))
 return;

    memcpy(xbp->xb_curp, str, len);
    xbp->xb_curp += len;
}
