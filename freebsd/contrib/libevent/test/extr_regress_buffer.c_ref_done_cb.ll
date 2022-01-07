; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_buffer.c_ref_done_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_buffer.c_ref_done_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ref_done_cb_called_count = common dso_local global i32 0, align 4
@ref_done_cb_called_with = common dso_local global i8* null, align 8
@ref_done_cb_called_with_data = common dso_local global i8* null, align 8
@ref_done_cb_called_with_len = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*)* @ref_done_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ref_done_cb(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @ref_done_cb_called_count, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @ref_done_cb_called_count, align 4
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** @ref_done_cb_called_with, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** @ref_done_cb_called_with_data, align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* @ref_done_cb_called_with_len, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
