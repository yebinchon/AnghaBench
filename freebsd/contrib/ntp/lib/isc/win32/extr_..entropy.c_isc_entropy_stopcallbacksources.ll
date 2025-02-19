; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_stopcallbacksources.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_stopcallbacksources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32 (%struct.TYPE_12__*, i32)* }

@ENTROPY_SOURCETYPE_CALLBACK = common dso_local global i64 0, align 8
@ISC_FALSE = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_entropy_stopcallbacksources(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = call i32 @VALID_ENTROPY(%struct.TYPE_13__* %5)
  %7 = call i32 @REQUIRE(i32 %6)
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = call i32 @LOCK(i32* %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_12__* @ISC_LIST_HEAD(i32 %13)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %3, align 8
  br label %15

15:                                               ; preds = %50, %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %54

18:                                               ; preds = %15
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ENTROPY_SOURCETYPE_CALLBACK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %4, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %24
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.TYPE_12__*, i32)* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %40(%struct.TYPE_12__* %41, i32 %44)
  %46 = load i64, i64* @ISC_FALSE, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %37, %32, %24
  br label %50

50:                                               ; preds = %49, %18
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = load i32, i32* @link, align 4
  %53 = call %struct.TYPE_12__* @ISC_LIST_NEXT(%struct.TYPE_12__* %51, i32 %52)
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %3, align 8
  br label %15

54:                                               ; preds = %15
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = call i32 @UNLOCK(i32* %56)
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_ENTROPY(%struct.TYPE_13__*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local %struct.TYPE_12__* @ISC_LIST_HEAD(i32) #1

declare dso_local %struct.TYPE_12__* @ISC_LIST_NEXT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
