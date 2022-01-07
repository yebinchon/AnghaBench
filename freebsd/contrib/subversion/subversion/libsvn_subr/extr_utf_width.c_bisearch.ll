; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf_width.c_bisearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf_width.c_bisearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.interval*, i64)* @bisearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bisearch(i64 %0, %struct.interval* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.interval*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.interval* %1, %struct.interval** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.interval*, %struct.interval** %6, align 8
  %12 = getelementptr inbounds %struct.interval, %struct.interval* %11, i64 0
  %13 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %10, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.interval*, %struct.interval** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.interval, %struct.interval* %18, i64 %19
  %21 = getelementptr inbounds %struct.interval, %struct.interval* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %60

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %58, %25
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %31, %32
  %34 = sdiv i64 %33, 2
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.interval*, %struct.interval** %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.interval, %struct.interval* %36, i64 %37
  %39 = getelementptr inbounds %struct.interval, %struct.interval* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %35, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %58

45:                                               ; preds = %30
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.interval*, %struct.interval** %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.interval, %struct.interval* %47, i64 %48
  %50 = getelementptr inbounds %struct.interval, %struct.interval* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %46, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i64, i64* %9, align 8
  %55 = sub nsw i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %57

56:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %60

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %42
  br label %26

59:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %56, %24
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
