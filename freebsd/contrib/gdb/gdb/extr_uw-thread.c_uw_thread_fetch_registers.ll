; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_uw_thread_fetch_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_uw_thread_fetch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32)* }
%struct.thread_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.thread_map = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@base_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @uw_thread_fetch_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uw_thread_fetch_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca %struct.thread_map, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @base_ops, i32 0, i32 0), align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 %6(i32 %7)
  %9 = call i32 @TRY_BASE(i32 %8, i32* %3)
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %36

13:                                               ; preds = %1
  %14 = load i32, i32* @inferior_ptid, align 4
  %15 = call %struct.thread_info* @find_thread_pid(i32 %14)
  store %struct.thread_info* %15, %struct.thread_info** %4, align 8
  %16 = icmp ne %struct.thread_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %36

18:                                               ; preds = %13
  %19 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %20 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @read_map(i32 %23, %struct.thread_map* %5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %36

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = call i32 @supply_gregset(i32* %30)
  %32 = getelementptr inbounds %struct.thread_map, %struct.thread_map* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @supply_fpregset(i32* %34)
  br label %36

36:                                               ; preds = %27, %26, %17, %12
  ret void
}

declare dso_local i32 @TRY_BASE(i32, i32*) #1

declare dso_local %struct.thread_info* @find_thread_pid(i32) #1

declare dso_local i32 @read_map(i32, %struct.thread_map*) #1

declare dso_local i32 @supply_gregset(i32*) #1

declare dso_local i32 @supply_fpregset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
