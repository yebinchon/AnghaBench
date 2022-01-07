; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_thr_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_thr_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_thr_suspend_args = type { i32* }
%struct.timespec32 = type { i32, i32 }
%struct.timespec = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_thr_suspend(%struct.thread* %0, %struct.freebsd32_thr_suspend_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_thr_suspend_args*, align 8
  %6 = alloca %struct.timespec32, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_thr_suspend_args* %1, %struct.freebsd32_thr_suspend_args** %5, align 8
  store i32 0, i32* %9, align 4
  store %struct.timespec* null, %struct.timespec** %8, align 8
  %10 = load %struct.freebsd32_thr_suspend_args*, %struct.freebsd32_thr_suspend_args** %5, align 8
  %11 = getelementptr inbounds %struct.freebsd32_thr_suspend_args, %struct.freebsd32_thr_suspend_args* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.freebsd32_thr_suspend_args*, %struct.freebsd32_thr_suspend_args** %5, align 8
  %16 = getelementptr inbounds %struct.freebsd32_thr_suspend_args, %struct.freebsd32_thr_suspend_args* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = bitcast %struct.timespec32* %6 to i8*
  %20 = call i32 @copyin(i8* %18, i8* %19, i32 8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  store %struct.timespec* %7, %struct.timespec** %8, align 8
  br label %32

32:                                               ; preds = %25, %2
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = load %struct.timespec*, %struct.timespec** %8, align 8
  %35 = call i32 @kern_thr_suspend(%struct.thread* %33, %struct.timespec* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @copyin(i8*, i8*, i32) #1

declare dso_local i32 @kern_thr_suspend(%struct.thread*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
