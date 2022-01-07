; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_condition.c_isc_condition_broadcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_condition.c_isc_condition_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@ISC_FALSE = common dso_local global i64 0, align 8
@LBROADCAST = common dso_local global i64 0, align 8
@ISC_TRUE = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@ISC_R_UNEXPECTED = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_condition_broadcast(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load i64, i64* @ISC_FALSE, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @REQUIRE(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_7__* @ISC_LIST_HEAD(i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  br label %15

15:                                               ; preds = %30, %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @LBROADCAST, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SetEvent(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i64, i64* @ISC_TRUE, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %27, %18
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load i32, i32* @link, align 4
  %33 = call %struct.TYPE_7__* @ISC_LIST_NEXT(%struct.TYPE_7__* %31, i32 %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %4, align 8
  br label %15

34:                                               ; preds = %15
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @ISC_R_UNEXPECTED, align 4
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local %struct.TYPE_7__* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local %struct.TYPE_7__* @ISC_LIST_NEXT(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
