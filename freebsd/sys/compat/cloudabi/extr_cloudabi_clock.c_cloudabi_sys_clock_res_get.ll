; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_clock.c_cloudabi_sys_clock_res_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_clock.c_cloudabi_sys_clock_res_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_clock_res_get_args = type { i32 }
%struct.timespec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_clock_res_get(%struct.thread* %0, %struct.cloudabi_sys_clock_res_get_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_clock_res_get_args*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_clock_res_get_args* %1, %struct.cloudabi_sys_clock_res_get_args** %5, align 8
  %10 = load %struct.cloudabi_sys_clock_res_get_args*, %struct.cloudabi_sys_clock_res_get_args** %5, align 8
  %11 = getelementptr inbounds %struct.cloudabi_sys_clock_res_get_args, %struct.cloudabi_sys_clock_res_get_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cloudabi_convert_clockid(i32 %12, i32* %9)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @kern_clock_getres(%struct.thread* %19, i32 %20, %struct.timespec* %6)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %37

26:                                               ; preds = %18
  %27 = call i32 @cloudabi_convert_timespec(%struct.timespec* %6, i32* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %26
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32 %35, i32* %7, i32 4)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %30, %24, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @cloudabi_convert_clockid(i32, i32*) #1

declare dso_local i32 @kern_clock_getres(%struct.thread*, i32, %struct.timespec*) #1

declare dso_local i32 @cloudabi_convert_timespec(%struct.timespec*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
