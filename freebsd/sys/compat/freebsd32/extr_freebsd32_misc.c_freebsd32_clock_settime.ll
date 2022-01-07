; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_clock_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_clock_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_clock_settime_args = type { i32, i32 }
%struct.timespec = type { i32 }
%struct.timespec32 = type { i32 }

@tv_sec = common dso_local global i32 0, align 4
@tv_nsec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_clock_settime(%struct.thread* %0, %struct.freebsd32_clock_settime_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_clock_settime_args*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_clock_settime_args* %1, %struct.freebsd32_clock_settime_args** %5, align 8
  %9 = load %struct.freebsd32_clock_settime_args*, %struct.freebsd32_clock_settime_args** %5, align 8
  %10 = getelementptr inbounds %struct.freebsd32_clock_settime_args, %struct.freebsd32_clock_settime_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @copyin(i32 %11, %struct.timespec32* %7, i32 4)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load i32, i32* @tv_sec, align 4
  %19 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CP(i32 %20, i32 %22, i32 %18)
  %24 = load i32, i32* @tv_nsec, align 4
  %25 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CP(i32 %26, i32 %28, i32 %24)
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = load %struct.freebsd32_clock_settime_args*, %struct.freebsd32_clock_settime_args** %5, align 8
  %32 = getelementptr inbounds %struct.freebsd32_clock_settime_args, %struct.freebsd32_clock_settime_args* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kern_clock_settime(%struct.thread* %30, i32 %33, %struct.timespec* %6)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %17, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @copyin(i32, %struct.timespec32*, i32) #1

declare dso_local i32 @CP(i32, i32, i32) #1

declare dso_local i32 @kern_clock_settime(%struct.thread*, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
