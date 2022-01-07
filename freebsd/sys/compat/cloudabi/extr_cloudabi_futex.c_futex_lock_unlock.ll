; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_lock_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_lock = type { i64 }
%struct.thread = type { i64 }

@LOCK_UNMANAGED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futex_lock*, %struct.thread*, i32*)* @futex_lock_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futex_lock_unlock(%struct.futex_lock* %0, %struct.thread* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.futex_lock*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.futex_lock* %0, %struct.futex_lock** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.futex_lock*, %struct.futex_lock** %5, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @futex_lock_update_owner(%struct.futex_lock* %9, i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %36

16:                                               ; preds = %3
  %17 = load %struct.futex_lock*, %struct.futex_lock** %5, align 8
  %18 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LOCK_UNMANAGED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.futex_lock*, %struct.futex_lock** %5, align 8
  %24 = getelementptr inbounds %struct.futex_lock, %struct.futex_lock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.thread*, %struct.thread** %6, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @EPERM, align 4
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %22, %16
  %33 = load %struct.futex_lock*, %struct.futex_lock** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @futex_lock_wake_up_next(%struct.futex_lock* %33, i32* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %30, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @futex_lock_update_owner(%struct.futex_lock*, i32*) #1

declare dso_local i32 @futex_lock_wake_up_next(%struct.futex_lock*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
