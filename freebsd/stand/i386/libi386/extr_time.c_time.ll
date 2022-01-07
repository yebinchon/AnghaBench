; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_time.c_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_time.c_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time.lasttime = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @time(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %7 = call i64 (...) @bios_seconds()
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %3, align 8
  %10 = call i64 (...) @bios_seconds()
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %8
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = icmp slt i32 %22, 1000
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  br i1 %25, label %8, label %26

26:                                               ; preds = %24
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @time.lasttime, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = add nsw i64 %31, 86400
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i64, i64* %3, align 8
  store i64 %34, i64* @time.lasttime, align 8
  %35 = load i64*, i64** %2, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, i64* %3, align 8
  %39 = load i64*, i64** %2, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @bios_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
