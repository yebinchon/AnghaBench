; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_osm_congestion_control_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_osm_congestion_control_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, %struct.osm_opensm* }
%struct.osm_opensm = type { i32, i32, i32, i32, i32, i32 }

@IB_SUCCESS = common dso_local global i64 0, align 8
@CONGESTION_CONTROL_INITIAL_TID_VALUE = common dso_local global i32 0, align 4
@OSM_MSG_MAD_CC = common dso_local global i32 0, align 4
@cc_rcv_mad = common dso_local global i32 0, align 4
@CL_DISP_INVALID_HANDLE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@OSM_THREAD_STATE_NONE = common dso_local global i32 0, align 4
@cc_poller = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cc poller\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @osm_congestion_control_init(%struct.TYPE_6__* %0, %struct.osm_opensm* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.osm_opensm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.osm_opensm* %1, %struct.osm_opensm** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* @IB_SUCCESS, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.osm_opensm*, %struct.osm_opensm** %5, align 8
  %10 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %9, i32 0, i32 3
  %11 = call i32 @OSM_LOG_ENTER(i32* %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 88)
  %14 = load %struct.osm_opensm*, %struct.osm_opensm** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 14
  store %struct.osm_opensm* %14, %struct.osm_opensm** %16, align 8
  %17 = load %struct.osm_opensm*, %struct.osm_opensm** %5, align 8
  %18 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %17, i32 0, i32 5
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 13
  store i32* %18, i32** %20, align 8
  %21 = load %struct.osm_opensm*, %struct.osm_opensm** %5, align 8
  %22 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %21, i32 0, i32 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 12
  store i32* %22, i32** %24, align 8
  %25 = load %struct.osm_opensm*, %struct.osm_opensm** %5, align 8
  %26 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.osm_opensm*, %struct.osm_opensm** %5, align 8
  %30 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 11
  store i32* %30, i32** %32, align 8
  %33 = load i32, i32* @CONGESTION_CONTROL_INITIAL_TID_VALUE, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 10
  store i32 %33, i32* %35, align 8
  %36 = load %struct.osm_opensm*, %struct.osm_opensm** %5, align 8
  %37 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 4
  %41 = load %struct.osm_opensm*, %struct.osm_opensm** %5, align 8
  %42 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %41, i32 0, i32 0
  %43 = load i32, i32* @OSM_MSG_MAD_CC, align 4
  %44 = load i32, i32* @cc_rcv_mad, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = call i64 @cl_disp_register(i32* %42, i32 %43, i32 %44, %struct.TYPE_6__* %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CL_DISP_INVALID_HANDLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %3
  br label %117

55:                                               ; preds = %3
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 8
  %58 = call i32 @cl_qlist_init(i32* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  %61 = call i64 @cl_spinlock_init(i32* %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @IB_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %117

66:                                               ; preds = %55
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  %69 = call i32 @cl_event_construct(i32* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i64 @cl_event_init(i32* %71, i32 %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @IB_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %117

78:                                               ; preds = %66
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  %81 = call i32 @cl_event_construct(i32* %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i64 @cl_event_init(i32* %83, i32 %84)
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @IB_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %117

90:                                               ; preds = %78
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = call i32 @cl_event_construct(i32* %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = load i32, i32* @FALSE, align 4
  %97 = call i64 @cl_event_init(i32* %95, i32 %96)
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* @IB_SUCCESS, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %117

102:                                              ; preds = %90
  %103 = load i32, i32* @OSM_THREAD_STATE_NONE, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* @cc_poller, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = call i64 @cl_thread_init(i32* %107, i32 %108, %struct.TYPE_6__* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @IB_SUCCESS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  br label %117

115:                                              ; preds = %102
  %116 = load i64, i64* @IB_SUCCESS, align 8
  store i64 %116, i64* %7, align 8
  br label %117

117:                                              ; preds = %115, %114, %101, %89, %77, %65, %54
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @OSM_LOG_EXIT(i32* %120)
  %122 = load i64, i64* %7, align 8
  ret i64 %122
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @cl_disp_register(i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @cl_qlist_init(i32*) #1

declare dso_local i64 @cl_spinlock_init(i32*) #1

declare dso_local i32 @cl_event_construct(i32*) #1

declare dso_local i64 @cl_event_init(i32*, i32) #1

declare dso_local i64 @cl_thread_init(i32*, i32, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
