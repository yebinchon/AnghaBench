; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_task.c_dequeue_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_task.c_dequeue_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"dequeue_events\00", align 1
@ev_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i64, i64, i8*, i32*, i32)* @dequeue_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dequeue_events(%struct.TYPE_12__* %0, i8* %1, i64 %2, i64 %3, i8* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = call i32 @VALID_TASK(%struct.TYPE_12__* %18)
  %20 = call i32 @REQUIRE(i32 %19)
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp sge i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @REQUIRE(i32 %24)
  %26 = call i32 @XTRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = call i32 @LOCK(i32* %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_11__* @HEAD(i32 %32)
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %15, align 8
  br label %34

34:                                               ; preds = %92, %7
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %36 = icmp ne %struct.TYPE_11__* %35, null
  br i1 %36, label %37, label %94

37:                                               ; preds = %34
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %39 = load i32, i32* @ev_link, align 4
  %40 = call %struct.TYPE_11__* @NEXT(%struct.TYPE_11__* %38, i32 %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %16, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %37
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %55, %52
  %62 = load i8*, i8** %12, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %64, %61
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %75 = call i64 @PURGE_OK(%struct.TYPE_11__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %73, %70
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %82 = load i32, i32* @ev_link, align 4
  %83 = call i32 @DEQUEUE(i32 %80, %struct.TYPE_11__* %81, i32 %82)
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %87 = load i32, i32* @ev_link, align 4
  %88 = call i32 @ENQUEUE(i32 %85, %struct.TYPE_11__* %86, i32 %87)
  %89 = load i32, i32* %17, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %77, %73, %64, %55, %46, %37
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %15, align 8
  br label %34

94:                                               ; preds = %34
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = call i32 @UNLOCK(i32* %96)
  %98 = load i32, i32* %17, align 4
  ret i32 %98
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_TASK(%struct.TYPE_12__*) #1

declare dso_local i32 @XTRACE(i8*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local %struct.TYPE_11__* @HEAD(i32) #1

declare dso_local %struct.TYPE_11__* @NEXT(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @PURGE_OK(%struct.TYPE_11__*) #1

declare dso_local i32 @DEQUEUE(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ENQUEUE(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
