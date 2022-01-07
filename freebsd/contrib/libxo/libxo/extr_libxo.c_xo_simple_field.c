
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_xff_flags_t ;
typedef int xo_handle_t ;
typedef scalar_t__ ssize_t ;


 int XFF_NO_OUTPUT ;
 int xo_data_append_content (int *,char const*,scalar_t__,int ) ;
 int xo_do_format_field (int *,int *,char const*,scalar_t__,int ) ;

__attribute__((used)) static inline void
xo_simple_field (xo_handle_t *xop, unsigned encode_only,
        const char *value, ssize_t vlen,
        const char *fmt, ssize_t flen, xo_xff_flags_t flags)
{
    if (encode_only)
 flags |= XFF_NO_OUTPUT;

    if (vlen == 0)
 xo_do_format_field(xop, ((void*)0), fmt, flen, flags);
    else if (!encode_only)
 xo_data_append_content(xop, value, vlen, flags);
}
