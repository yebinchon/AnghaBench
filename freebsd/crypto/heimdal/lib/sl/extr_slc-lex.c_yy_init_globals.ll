; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-lex.c_yy_init_globals.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-lex.c_yy_init_globals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yy_buffer_stack = common dso_local global i64 0, align 8
@yy_buffer_stack_top = common dso_local global i64 0, align 8
@yy_buffer_stack_max = common dso_local global i64 0, align 8
@yy_c_buf_p = common dso_local global i8* null, align 8
@yy_init = common dso_local global i64 0, align 8
@yy_start = common dso_local global i64 0, align 8
@yyin = common dso_local global i32* null, align 8
@yyout = common dso_local global i32* null, align 8
@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @yy_init_globals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yy_init_globals() #0 {
  store i64 0, i64* @yy_buffer_stack, align 8
  store i64 0, i64* @yy_buffer_stack_top, align 8
  store i64 0, i64* @yy_buffer_stack_max, align 8
  store i8* null, i8** @yy_c_buf_p, align 8
  store i64 0, i64* @yy_init, align 8
  store i64 0, i64* @yy_start, align 8
  store i32* null, i32** @yyin, align 8
  store i32* null, i32** @yyout, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
