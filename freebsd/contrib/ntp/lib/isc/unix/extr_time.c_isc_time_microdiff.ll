; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_time.c_isc_time_microdiff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_time.c_isc_time_microdiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@NS_PER_S = common dso_local global i64 0, align 8
@NS_PER_US = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_time_microdiff(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NS_PER_S, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NS_PER_S, align 8
  %28 = icmp slt i64 %26, %27
  br label %29

29:                                               ; preds = %23, %14
  %30 = phi i1 [ false, %14 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @INSIST(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NS_PER_S, align 8
  %37 = mul nsw i64 %35, %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  store i64 %41, i64* %6, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NS_PER_S, align 8
  %46 = mul nsw i64 %44, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %29
  store i64 0, i64* %3, align 8
  br label %63

55:                                               ; preds = %29
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub nsw i64 %56, %57
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* @NS_PER_US, align 8
  %60 = load i64, i64* %8, align 8
  %61 = sdiv i64 %60, %59
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %55, %54
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @INSIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
