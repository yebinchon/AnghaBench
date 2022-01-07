; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_open_service_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_open_service_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, %struct.TYPE_13__*, i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.vchiq_open_payload = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.vchiq_open_payload* }

@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@VCHIQ_MSG_OPEN = common dso_local global i32 0, align 4
@QMFLAGS_IS_BLOCKING = common dso_local global i32 0, align 4
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_OPEN = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_OPENSYNC = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_CLOSEWAIT = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%d: osi - srvstate = %s (ref %d)\00", align 1
@srvstate_names = common dso_local global i32* null, align 8
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@error_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vchiq_open_service_internal(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vchiq_open_payload, align 4
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %5, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %5, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %5, i32 0, i32 2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %5, i32 0, i32 3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %24 = ptrtoint %struct.vchiq_open_payload* %5 to i32
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  store %struct.vchiq_open_payload* inttoptr (i64 16 to %struct.vchiq_open_payload*), %struct.vchiq_open_payload** %25, align 8
  %26 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = call i32 @vchiq_use_service_internal(%struct.TYPE_11__* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = load i32, i32* @VCHIQ_MSG_OPEN, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @VCHIQ_MAKE_MSG(i32 %35, i32 %38, i32 0)
  %40 = load i32, i32* @QMFLAGS_IS_BLOCKING, align 4
  %41 = call i64 @queue_message(%struct.TYPE_13__* %34, i32* null, i32 %39, %struct.TYPE_12__* %6, i32 1, i32 16, i32 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %98

45:                                               ; preds = %2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = call i64 @down_interruptible(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %51, i64* %7, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = call i32 @vchiq_release_service_internal(%struct.TYPE_11__* %52)
  br label %97

54:                                               ; preds = %45
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VCHIQ_SRVSTATE_OPEN, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %96

60:                                               ; preds = %54
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VCHIQ_SRVSTATE_OPENSYNC, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %60
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @VCHIQ_SRVSTATE_CLOSEWAIT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load i32, i32* @vchiq_core_log_level, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** @srvstate_names, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @vchiq_log_error(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %72, %66
  %90 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %90, i64* %7, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = load i32, i32* @error_count, align 4
  %93 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_11__* %91, i32 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = call i32 @vchiq_release_service_internal(%struct.TYPE_11__* %94)
  br label %96

96:                                               ; preds = %89, %60, %54
  br label %97

97:                                               ; preds = %96, %50
  br label %98

98:                                               ; preds = %97, %2
  %99 = load i64, i64* %7, align 8
  ret i64 %99
}

declare dso_local i32 @vchiq_use_service_internal(%struct.TYPE_11__*) #1

declare dso_local i64 @queue_message(%struct.TYPE_13__*, i32*, i32, %struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_MAKE_MSG(i32, i32, i32) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @vchiq_release_service_internal(%struct.TYPE_11__*) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_INC(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
