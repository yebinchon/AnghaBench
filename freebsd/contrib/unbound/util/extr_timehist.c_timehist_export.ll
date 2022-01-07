; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_timehist.c_timehist_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_timehist.c_timehist_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timehist = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timehist_export(%struct.timehist* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.timehist*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.timehist* %0, %struct.timehist** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.timehist*, %struct.timehist** %4, align 8
  %9 = icmp ne %struct.timehist* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %40

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.timehist*, %struct.timehist** %4, align 8
  %14 = getelementptr inbounds %struct.timehist, %struct.timehist* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.timehist*, %struct.timehist** %4, align 8
  %19 = getelementptr inbounds %struct.timehist, %struct.timehist* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %17, %11
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.timehist*, %struct.timehist** %4, align 8
  %28 = getelementptr inbounds %struct.timehist, %struct.timehist* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 %33, i64* %36, align 8
  br label %37

37:                                               ; preds = %26
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %22

40:                                               ; preds = %10, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
