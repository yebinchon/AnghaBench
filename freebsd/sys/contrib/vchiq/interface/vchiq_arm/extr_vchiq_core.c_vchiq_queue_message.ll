; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_queue_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_queue_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@VCHIQ_ERROR = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@error_count = common dso_local global i32 0, align 4
@VCHIQ_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@VCHIQ_MSG_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_queue_message(i32 %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_12__* @find_service_by_handle(i32 %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %7, align 8
  %13 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = call i64 @vchiq_check_service(%struct.TYPE_12__* %17)
  %19 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %3
  br label %111

22:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %23
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %27
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = load i32, i32* @error_count, align 4
  %46 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_12__* %44, i32 %45)
  br label %111

47:                                               ; preds = %35
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %47, %27
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %23

62:                                               ; preds = %23
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @VCHIQ_MAX_MSG_SIZE, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = load i32, i32* @error_count, align 4
  %69 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_12__* %67, i32 %68)
  br label %111

70:                                               ; preds = %62
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %108 [
    i32 129, label %74
    i32 128, label %91
  ]

74:                                               ; preds = %70
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = load i32, i32* @VCHIQ_MSG_DATA, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @VCHIQ_MAKE_MSG(i32 %79, i32 %82, i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @queue_message(i32 %77, %struct.TYPE_12__* %78, i32 %86, %struct.TYPE_13__* %87, i32 %88, i32 %89, i32 1)
  store i32 %90, i32* %8, align 4
  br label %110

91:                                               ; preds = %70
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = load i32, i32* @VCHIQ_MSG_DATA, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @VCHIQ_MAKE_MSG(i32 %96, i32 %99, i32 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @queue_message_sync(i32 %94, %struct.TYPE_12__* %95, i32 %103, %struct.TYPE_13__* %104, i32 %105, i32 %106, i32 1)
  store i32 %107, i32* %8, align 4
  br label %110

108:                                              ; preds = %70
  %109 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %108, %91, %74
  br label %111

111:                                              ; preds = %110, %66, %43, %21
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = icmp ne %struct.TYPE_12__* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %116 = call i32 @unlock_service(%struct.TYPE_12__* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_12__* @find_service_by_handle(i32) #1

declare dso_local i64 @vchiq_check_service(%struct.TYPE_12__*) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @queue_message(i32, %struct.TYPE_12__*, i32, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_MAKE_MSG(i32, i32, i32) #1

declare dso_local i32 @queue_message_sync(i32, %struct.TYPE_12__*, i32, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @unlock_service(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
