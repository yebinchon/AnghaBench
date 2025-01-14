; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_timehist.c_timehist_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_timehist.c_timehist_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timehist = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timehist_insert(%struct.timehist* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timehist*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i64, align 8
  store %struct.timehist* %0, %struct.timehist** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %32, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.timehist*, %struct.timehist** %3, align 8
  %9 = getelementptr inbounds %struct.timehist, %struct.timehist* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = load %struct.timeval*, %struct.timeval** %4, align 8
  %14 = load %struct.timehist*, %struct.timehist** %3, align 8
  %15 = getelementptr inbounds %struct.timehist, %struct.timehist* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i64 @timeval_smaller(%struct.timeval* %13, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load %struct.timehist*, %struct.timehist** %3, align 8
  %24 = getelementptr inbounds %struct.timehist, %struct.timehist* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %47

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %6

35:                                               ; preds = %6
  %36 = load %struct.timehist*, %struct.timehist** %3, align 8
  %37 = getelementptr inbounds %struct.timehist, %struct.timehist* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.timehist*, %struct.timehist** %3, align 8
  %40 = getelementptr inbounds %struct.timehist, %struct.timehist* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %35, %22
  ret void
}

declare dso_local i64 @timeval_smaller(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
