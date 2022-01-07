; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_cloudabi_sys_condvar_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_cloudabi_sys_condvar_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_condvar_signal_args = type { i64, i32, i32 }
%struct.futex_condvar = type { i32, %struct.futex_lock* }
%struct.futex_lock = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@LOCK_UNMANAGED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_condvar_signal(%struct.thread* %0, %struct.cloudabi_sys_condvar_signal_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_condvar_signal_args*, align 8
  %6 = alloca %struct.futex_condvar*, align 8
  %7 = alloca %struct.futex_lock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_condvar_signal_args* %1, %struct.cloudabi_sys_condvar_signal_args** %5, align 8
  %10 = load %struct.cloudabi_sys_condvar_signal_args*, %struct.cloudabi_sys_condvar_signal_args** %5, align 8
  %11 = getelementptr inbounds %struct.cloudabi_sys_condvar_signal_args, %struct.cloudabi_sys_condvar_signal_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = load %struct.cloudabi_sys_condvar_signal_args*, %struct.cloudabi_sys_condvar_signal_args** %5, align 8
  %19 = getelementptr inbounds %struct.cloudabi_sys_condvar_signal_args, %struct.cloudabi_sys_condvar_signal_args* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.cloudabi_sys_condvar_signal_args*, %struct.cloudabi_sys_condvar_signal_args** %5, align 8
  %22 = getelementptr inbounds %struct.cloudabi_sys_condvar_signal_args, %struct.cloudabi_sys_condvar_signal_args* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @futex_condvar_lookup(%struct.thread* %17, i32 %20, i32 %23, %struct.futex_condvar** %6)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %16
  %37 = load %struct.futex_condvar*, %struct.futex_condvar** %6, align 8
  %38 = getelementptr inbounds %struct.futex_condvar, %struct.futex_condvar* %37, i32 0, i32 1
  %39 = load %struct.futex_lock*, %struct.futex_lock** %38, align 8
  store %struct.futex_lock* %39, %struct.futex_lock** %7, align 8
  %40 = load %struct.futex_lock*, %struct.futex_lock** %7, align 8
  %41 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LOCK_UNMANAGED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.futex_condvar*, %struct.futex_condvar** %6, align 8
  %47 = getelementptr inbounds %struct.futex_condvar, %struct.futex_condvar* %46, i32 0, i32 0
  %48 = load i64, i64* %8, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @futex_queue_wake_up_donate(i32* %47, i64 %49)
  br label %58

51:                                               ; preds = %36
  %52 = load %struct.futex_condvar*, %struct.futex_condvar** %6, align 8
  %53 = getelementptr inbounds %struct.futex_condvar, %struct.futex_condvar* %52, i32 0, i32 0
  %54 = load %struct.futex_lock*, %struct.futex_lock** %7, align 8
  %55 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %54, i32 0, i32 1
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @futex_queue_requeue(i32* %53, i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %51, %45
  %59 = load %struct.futex_condvar*, %struct.futex_condvar** %6, align 8
  %60 = load %struct.cloudabi_sys_condvar_signal_args*, %struct.cloudabi_sys_condvar_signal_args** %5, align 8
  %61 = getelementptr inbounds %struct.cloudabi_sys_condvar_signal_args, %struct.cloudabi_sys_condvar_signal_args* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @futex_condvar_unmanage(%struct.futex_condvar* %59, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.futex_condvar*, %struct.futex_condvar** %6, align 8
  %65 = call i32 @futex_condvar_release(%struct.futex_condvar* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %58, %34, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @futex_condvar_lookup(%struct.thread*, i32, i32, %struct.futex_condvar**) #1

declare dso_local i32 @futex_queue_wake_up_donate(i32*, i64) #1

declare dso_local i32 @futex_queue_requeue(i32*, i32*, i64) #1

declare dso_local i32 @futex_condvar_unmanage(%struct.futex_condvar*, i32) #1

declare dso_local i32 @futex_condvar_release(%struct.futex_condvar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
