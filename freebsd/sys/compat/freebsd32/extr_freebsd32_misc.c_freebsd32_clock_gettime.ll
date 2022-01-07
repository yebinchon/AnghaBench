; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_clock_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_clock_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_clock_gettime_args = type { i32, i32 }
%struct.timespec = type { i32 }
%struct.timespec32 = type { i32 }

@tv_sec = common dso_local global i32 0, align 4
@tv_nsec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_clock_gettime(%struct.thread* %0, %struct.freebsd32_clock_gettime_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.freebsd32_clock_gettime_args*, align 8
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.timespec32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.freebsd32_clock_gettime_args* %1, %struct.freebsd32_clock_gettime_args** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = load %struct.freebsd32_clock_gettime_args*, %struct.freebsd32_clock_gettime_args** %4, align 8
  %10 = getelementptr inbounds %struct.freebsd32_clock_gettime_args, %struct.freebsd32_clock_gettime_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @kern_clock_gettime(%struct.thread* %8, i32 %11, %struct.timespec* %5)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load i32, i32* @tv_sec, align 4
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CP(i32 %18, i32 %20, i32 %16)
  %22 = load i32, i32* @tv_nsec, align 4
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CP(i32 %24, i32 %26, i32 %22)
  %28 = load %struct.freebsd32_clock_gettime_args*, %struct.freebsd32_clock_gettime_args** %4, align 8
  %29 = getelementptr inbounds %struct.freebsd32_clock_gettime_args, %struct.freebsd32_clock_gettime_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @copyout(%struct.timespec32* %6, i32 %30, i32 4)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %15, %2
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @kern_clock_gettime(%struct.thread*, i32, %struct.timespec*) #1

declare dso_local i32 @CP(i32, i32, i32) #1

declare dso_local i32 @copyout(%struct.timespec32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
