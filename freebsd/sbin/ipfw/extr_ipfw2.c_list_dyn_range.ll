; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_list_dyn_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_list_dyn_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_opts = type { i32 }
%struct.format_opts = type { i32 }
%struct.buf_pr = type { i32 }

@list_dyn_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdline_opts*, %struct.format_opts*, %struct.buf_pr*, i32, i64)* @list_dyn_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_dyn_range(%struct.cmdline_opts* %0, %struct.format_opts* %1, %struct.buf_pr* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.cmdline_opts*, align 8
  %7 = alloca %struct.format_opts*, align 8
  %8 = alloca %struct.buf_pr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.cmdline_opts* %0, %struct.cmdline_opts** %6, align 8
  store %struct.format_opts* %1, %struct.format_opts** %7, align 8
  store %struct.buf_pr* %2, %struct.buf_pr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %12 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i64, i64* %10, align 8
  %15 = load i32, i32* @list_dyn_state, align 4
  %16 = load %struct.buf_pr*, %struct.buf_pr** %8, align 8
  %17 = call i64 @foreach_state(%struct.cmdline_opts* %11, %struct.format_opts* %12, i32 %13, i64 %14, i32 %15, %struct.buf_pr* %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = trunc i64 %18 to i32
  ret i32 %19
}

declare dso_local i64 @foreach_state(%struct.cmdline_opts*, %struct.format_opts*, i32, i64, i32, %struct.buf_pr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
