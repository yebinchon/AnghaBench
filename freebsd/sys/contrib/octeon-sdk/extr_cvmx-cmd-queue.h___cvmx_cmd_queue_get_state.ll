; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.h___cvmx_cmd_queue_get_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.h___cvmx_cmd_queue_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@CVMX_ENABLE_PARAMETER_CHECKING = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_END = common dso_local global i32 0, align 4
@__cvmx_cmd_queue_state_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @__cvmx_cmd_queue_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__cvmx_cmd_queue_get_state(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @CVMX_ENABLE_PARAMETER_CHECKING, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CVMX_CMD_QUEUE_END, align 4
  %9 = icmp sge i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @cvmx_unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store i32* null, i32** %2, align 8
  br label %30

14:                                               ; preds = %6
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 65535
  %17 = icmp sge i32 %16, 256
  %18 = zext i1 %17 to i32
  %19 = call i64 @cvmx_unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %30

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__cvmx_cmd_queue_state_ptr, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @__cvmx_cmd_queue_get_index(i32 %27)
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %2, align 8
  br label %30

30:                                               ; preds = %23, %21, %13
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
}

declare dso_local i64 @cvmx_unlikely(i32) #1

declare dso_local i64 @__cvmx_cmd_queue_get_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
