; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_queue_convert_timestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_queue_convert_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i64, i64, i32*, i32*, i32)* @futex_queue_convert_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futex_queue_convert_timestamp(%struct.thread* %0, i32 %1, i64 %2, i64 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %7
  %21 = load %struct.thread*, %struct.thread** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @cloudabi_clock_time_get(%struct.thread* %21, i32 %22, i64* %16)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %17, align 4
  store i32 %27, i32* %8, align 4
  br label %46

28:                                               ; preds = %20
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %16, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %37

33:                                               ; preds = %28
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %16, align 8
  %36 = sub nsw i64 %34, %35
  br label %37

37:                                               ; preds = %33, %32
  %38 = phi i64 [ 0, %32 ], [ %36, %33 ]
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %37, %7
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @futex_queue_convert_timestamp_relative(i64 %40)
  %42 = load i32*, i32** %13, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @futex_queue_convert_timestamp_relative(i64 %43)
  %45 = load i32*, i32** %14, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %39, %26
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @cloudabi_clock_time_get(%struct.thread*, i32, i64*) #1

declare dso_local i32 @futex_queue_convert_timestamp_relative(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
