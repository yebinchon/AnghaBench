; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_syscalls.c___thr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_syscalls.c___thr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @__thr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__thr_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pthread*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %9, %struct.pthread** %7, align 8
  %10 = load %struct.pthread*, %struct.pthread** %7, align 8
  %11 = call i32 @_thr_cancel_enter(%struct.pthread* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @__sys_read(i32 %12, i8* %13, i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.pthread*, %struct.pthread** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  %19 = zext i1 %18 to i32
  %20 = call i32 @_thr_cancel_leave(%struct.pthread* %16, i32 %19)
  %21 = load i32, i32* %8, align 4
  ret i32 %21
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_thr_cancel_enter(%struct.pthread*) #1

declare dso_local i32 @__sys_read(i32, i8*, i64) #1

declare dso_local i32 @_thr_cancel_leave(%struct.pthread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
