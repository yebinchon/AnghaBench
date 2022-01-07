; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_cc_send_ca_cong_setting.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_cc_send_ca_cong_setting.c"
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
@.str = private unnamed_addr constant [34 x i8] c"ERR C102: failed to allocate mad\0A\00", align 1
@IB_INSUFFICIENT_MEMORY = common dso_local global i32 0, align 4
@IB_MAD_ATTR_CA_CONG_SETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, %struct.TYPE_17__*)* @cc_send_ca_cong_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_send_ca_cong_setting(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %8, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @OSM_LOG_ENTER(i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %27, %3
  %35 = phi i1 [ true, %3 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = call i32 @memcmp(i32* %41, i32* %45, i32 4)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @IB_SUCCESS, align 4
  store i32 %49, i32* %4, align 4
  br label %88

50:                                               ; preds = %39, %34
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MAD_BLOCK_SIZE, align 4
  %58 = call i32* @osm_mad_pool_get(i32 %53, i32 %56, i32 %57, i32* null)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @OSM_LOG_ERROR, align 4
  %66 = call i32 @OSM_LOG(i32 %64, i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @IB_INSUFFICIENT_MEMORY, align 4
  store i32 %67, i32* %4, align 4
  br label %88

68:                                               ; preds = %50
  %69 = load i32*, i32** %10, align 8
  %70 = call i32* @osm_madw_get_cc_mad_ptr(i32* %69)
  store i32* %70, i32** %11, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32* @ib_cc_mad_get_mgt_data_ptr(i32* %71)
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = call i32 @memcpy(i32* %73, i32* %75, i32 4)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %81 = load i32, i32* @IB_MAD_ATTR_CA_CONG_SETTING, align 4
  %82 = call i32 @cc_mad_post(%struct.TYPE_18__* %77, i32* %78, i32* %79, %struct.TYPE_17__* %80, i32 %81, i32 0)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @OSM_LOG_EXIT(i32 %85)
  %87 = load i32, i32* @IB_SUCCESS, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %68, %61, %48
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @OSM_LOG_ENTER(i32) #1

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
