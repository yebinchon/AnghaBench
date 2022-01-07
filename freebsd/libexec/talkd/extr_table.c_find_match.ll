; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/talkd/extr_table.c_find_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/talkd/extr_table.c_find_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i32, i32 }

@CLOCK_MONOTONIC_FAST = common dso_local global i32 0, align 4
@ts = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"find_match\00", align 1
@table = common dso_local global %struct.TYPE_11__* null, align 8
@NIL = common dso_local global %struct.TYPE_11__* null, align 8
@MAX_LIFE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"deleting expired entry\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LEAVE_INVITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @find_match(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load i32, i32* @CLOCK_MONOTONIC_FAST, align 4
  %8 = call i32 @clock_gettime(i32 %7, %struct.TYPE_13__* @ts)
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ts, i32 0, i32 0), align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* @debug, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = call i32 @print_request(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @table, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %4, align 8
  br label %17

17:                                               ; preds = %80, %15
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @NIL, align 8
  %20 = icmp ne %struct.TYPE_11__* %18, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %17
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %5, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i64, i64* @MAX_LIFE, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %21
  %33 = load i64, i64* @debug, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = call i32 @print_request(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = call i32 @delete(%struct.TYPE_11__* %40)
  br label %80

42:                                               ; preds = %21
  %43 = load i64, i64* @debug, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = call i32 @print_request(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @strcmp(i32 %52, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %49
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @strcmp(i32 %62, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %59
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @LEAVE_INVITE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %2, align 8
  br label %83

79:                                               ; preds = %69, %59, %49
  br label %80

80:                                               ; preds = %79, %39
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %4, align 8
  br label %17

82:                                               ; preds = %17
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %83

83:                                               ; preds = %82, %76
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %84
}

declare dso_local i32 @clock_gettime(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @print_request(i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @delete(%struct.TYPE_11__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
