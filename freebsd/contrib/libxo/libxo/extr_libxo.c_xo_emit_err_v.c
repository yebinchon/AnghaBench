
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int exit (int) ;
 int xo_emit_warn_hcv (int *,int ,int,char const*,int ) ;
 int xo_finish () ;

void
xo_emit_err_v (int eval, int code, const char *fmt, va_list vap)
{
    xo_emit_warn_hcv(((void*)0), 0, code, fmt, vap);
    xo_finish();
    exit(eval);
}
