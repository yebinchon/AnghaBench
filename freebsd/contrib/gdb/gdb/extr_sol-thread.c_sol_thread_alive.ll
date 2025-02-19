; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_alive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32)* }
%struct.TYPE_4__ = type { i32 (i32)* }

@main_ta = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@procfs_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@orig_core_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sol_thread_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sol_thread_alive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @is_thread(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @GET_THREAD(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @main_ta, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @p_td_ta_map_id2thr(i32 %13, i32 %14, i32* %5)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @TD_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %36

19:                                               ; preds = %10
  %20 = call i32 @p_td_thr_validate(i32* %5)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @TD_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %36

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load i64, i64* @target_has_execution, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @procfs_ops, i32 0, i32 0), align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 %29(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @orig_core_ops, i32 0, i32 0), align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 %33(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %28, %24, %23, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @is_thread(i32) #1

declare dso_local i32 @GET_THREAD(i32) #1

declare dso_local i32 @p_td_ta_map_id2thr(i32, i32, i32*) #1

declare dso_local i32 @p_td_thr_validate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
