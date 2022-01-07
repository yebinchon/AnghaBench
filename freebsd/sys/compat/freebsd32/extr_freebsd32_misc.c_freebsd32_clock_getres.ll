; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_clock_getres.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_clock_getres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_clock_getres_args = type { i32*, i32 }
%struct.timespec = type { i32 }
%struct.timespec32 = type { i32 }

@tv_sec = common dso_local global i32 0, align 4
@tv_nsec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_clock_getres(%struct.thread* %0, %struct.freebsd32_clock_getres_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_clock_getres_args*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_clock_getres_args* %1, %struct.freebsd32_clock_getres_args** %5, align 8
  %9 = load %struct.freebsd32_clock_getres_args*, %struct.freebsd32_clock_getres_args** %5, align 8
  %10 = getelementptr inbounds %struct.freebsd32_clock_getres_args, %struct.freebsd32_clock_getres_args* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = load %struct.freebsd32_clock_getres_args*, %struct.freebsd32_clock_getres_args** %5, align 8
  %17 = getelementptr inbounds %struct.freebsd32_clock_getres_args, %struct.freebsd32_clock_getres_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @kern_clock_getres(%struct.thread* %15, i32 %18, %struct.timespec* %6)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %14
  %23 = load i32, i32* @tv_sec, align 4
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CP(i32 %25, i32 %27, i32 %23)
  %29 = load i32, i32* @tv_nsec, align 4
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.timespec32, %struct.timespec32* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CP(i32 %31, i32 %33, i32 %29)
  %35 = load %struct.freebsd32_clock_getres_args*, %struct.freebsd32_clock_getres_args** %5, align 8
  %36 = getelementptr inbounds %struct.freebsd32_clock_getres_args, %struct.freebsd32_clock_getres_args* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @copyout(%struct.timespec32* %7, i32* %37, i32 4)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %22, %14
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @kern_clock_getres(%struct.thread*, i32, %struct.timespec*) #1

declare dso_local i32 @CP(i32, i32, i32) #1

declare dso_local i32 @copyout(%struct.timespec32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
