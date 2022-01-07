; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_futex.c_futex_copyin_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_futex.c_futex_copyin_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l_timespec = type { i32 }
%struct.timespec = type { i32 }

@LINUX_FUTEX_WAIT_BITSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.l_timespec*, i32, %struct.timespec*)* @futex_copyin_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futex_copyin_timeout(i32 %0, %struct.l_timespec* %1, i32 %2, %struct.timespec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.l_timespec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca %struct.l_timespec, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.l_timespec* %1, %struct.l_timespec** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.timespec* %3, %struct.timespec** %9, align 8
  %13 = load %struct.l_timespec*, %struct.l_timespec** %7, align 8
  %14 = call i32 @copyin(%struct.l_timespec* %13, %struct.l_timespec* %10, i32 4)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %5, align 4
  br label %46

19:                                               ; preds = %4
  %20 = load %struct.timespec*, %struct.timespec** %9, align 8
  %21 = call i32 @linux_to_native_timespec(%struct.timespec* %20, %struct.l_timespec* %10)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %46

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = call i32 @nanotime(%struct.timespec* %11)
  %31 = load %struct.timespec*, %struct.timespec** %9, align 8
  %32 = load %struct.timespec*, %struct.timespec** %9, align 8
  %33 = call i32 @timespecsub(%struct.timespec* %31, %struct.timespec* %11, %struct.timespec* %32)
  br label %44

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @LINUX_FUTEX_WAIT_BITSET, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = call i32 @nanouptime(%struct.timespec* %11)
  %40 = load %struct.timespec*, %struct.timespec** %9, align 8
  %41 = load %struct.timespec*, %struct.timespec** %9, align 8
  %42 = call i32 @timespecsub(%struct.timespec* %40, %struct.timespec* %11, %struct.timespec* %41)
  br label %43

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %24, %17
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @copyin(%struct.l_timespec*, %struct.l_timespec*, i32) #1

declare dso_local i32 @linux_to_native_timespec(%struct.timespec*, %struct.l_timespec*) #1

declare dso_local i32 @nanotime(%struct.timespec*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
