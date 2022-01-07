; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_get_next_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_get_next_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_hints = type { i32 }
%struct.iter_forwards = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_get_next_root(%struct.iter_hints* %0, %struct.iter_forwards* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iter_hints*, align 8
  %6 = alloca %struct.iter_forwards*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iter_hints* %0, %struct.iter_hints** %5, align 8
  store %struct.iter_forwards* %1, %struct.iter_forwards** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.iter_hints*, %struct.iter_hints** %5, align 8
  %17 = call i32 @hints_next_root(%struct.iter_hints* %16, i64* %8)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.iter_forwards*, %struct.iter_forwards** %6, align 8
  %19 = call i32 @forwards_next_root(%struct.iter_forwards* %18, i64* %9)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %52

26:                                               ; preds = %22, %3
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  br label %50

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %8, align 8
  %37 = load i64*, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  br label %49

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  br label %48

45:                                               ; preds = %38
  %46 = load i64, i64* %9, align 8
  %47 = load i64*, i64** %7, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @hints_next_root(%struct.iter_hints*, i64*) #1

declare dso_local i32 @forwards_next_root(%struct.iter_forwards*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
