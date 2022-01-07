; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_cc_send_sw_cong_setting.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_cc_send_sw_cong_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@IB_SUCCESS = common dso_local global i32 0, align 4
@MAD_BLOCK_SIZE = common dso_local global i32 0, align 4
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ERR C101: failed to allocate mad\0A\00", align 1
@IB_INSUFFICIENT_MEMORY = common dso_local global i32 0, align 4
@IB_MAD_ATTR_SW_CONG_SETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*)* @cc_send_sw_cong_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_send_sw_cong_setting(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %6, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @OSM_LOG_ENTER(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.TYPE_17__* @osm_node_get_physp_ptr(i32* %22, i32 0)
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %8, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %2
  %36 = phi i1 [ true, %2 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = call i32 @memcmp(i32* %42, i32* %46, i32 4)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @IB_SUCCESS, align 4
  store i32 %50, i32* %3, align 4
  br label %89

51:                                               ; preds = %40, %35
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAD_BLOCK_SIZE, align 4
  %59 = call i32* @osm_mad_pool_get(i32 %54, i32 %57, i32 %58, i32* null)
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %51
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @OSM_LOG_ERROR, align 4
  %67 = call i32 @OSM_LOG(i32 %65, i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @IB_INSUFFICIENT_MEMORY, align 4
  store i32 %68, i32* %3, align 4
  br label %89

69:                                               ; preds = %51
  %70 = load i32*, i32** %9, align 8
  %71 = call i32* @osm_madw_get_cc_mad_ptr(i32* %70)
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32* @ib_cc_mad_get_mgt_data_ptr(i32* %72)
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = call i32 @memcpy(i32* %74, i32* %76, i32 4)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = load i32, i32* @IB_MAD_ATTR_SW_CONG_SETTING, align 4
  %83 = call i32 @cc_mad_post(%struct.TYPE_18__* %78, i32* %79, i32* %80, %struct.TYPE_17__* %81, i32 %82, i32 0)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @OSM_LOG_EXIT(i32 %86)
  %88 = load i32, i32* @IB_SUCCESS, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %69, %62, %49
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @OSM_LOG_ENTER(i32) #1

declare dso_local %struct.TYPE_17__* @osm_node_get_physp_ptr(i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32* @osm_mad_pool_get(i32, i32, i32, i32*) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*) #1

declare dso_local i32* @osm_madw_get_cc_mad_ptr(i32*) #1

declare dso_local i32* @ib_cc_mad_get_mgt_data_ptr(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cc_mad_post(%struct.TYPE_18__*, i32*, i32*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @OSM_LOG_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
