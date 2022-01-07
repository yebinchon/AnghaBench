; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_osm_congestion_control_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_osm_congestion_control_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osm_opensm = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i32* }

@IB_NODE_TYPE_SWITCH = common dso_local global i64 0, align 8
@IB_SUCCESS = common dso_local global i64 0, align 8
@IB_NODE_TYPE_CA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_congestion_control_setup(%struct.osm_opensm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.osm_opensm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.osm_opensm* %0, %struct.osm_opensm** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.osm_opensm*, %struct.osm_opensm** %3, align 8
  %11 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

17:                                               ; preds = %1
  %18 = load %struct.osm_opensm*, %struct.osm_opensm** %3, align 8
  %19 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %18, i32 0, i32 0
  %20 = call i32 @OSM_LOG_ENTER(i32* %19)
  %21 = load %struct.osm_opensm*, %struct.osm_opensm** %3, align 8
  %22 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %111

26:                                               ; preds = %17
  %27 = load %struct.osm_opensm*, %struct.osm_opensm** %3, align 8
  %28 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %27, i32 0, i32 2
  %29 = call i32 @cc_setup_mad_data(i32* %28)
  %30 = load %struct.osm_opensm*, %struct.osm_opensm** %3, align 8
  %31 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %30, i32 0, i32 1
  %32 = call i32 @cl_plock_acquire(i32* %31)
  %33 = load %struct.osm_opensm*, %struct.osm_opensm** %3, align 8
  %34 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32* @cl_qmap_head(i32* %36)
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %102, %55, %26
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32* @cl_qmap_end(i32* %40)
  %42 = icmp ne i32* %39, %41
  br i1 %42, label %43, label %103

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = bitcast i32* %44 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %7, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32* @cl_qmap_next(i32* %49)
  store i32* %50, i32** %5, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %38

56:                                               ; preds = %43
  %57 = load i32*, i32** %8, align 8
  %58 = call i64 @osm_node_get_type(i32* %57)
  %59 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.osm_opensm*, %struct.osm_opensm** %3, align 8
  %63 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %62, i32 0, i32 2
  %64 = load i32*, i32** %8, align 8
  %65 = call i64 @cc_send_sw_cong_setting(i32* %63, i32* %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @IB_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 -1, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %61
  br label %102

71:                                               ; preds = %56
  %72 = load i32*, i32** %8, align 8
  %73 = call i64 @osm_node_get_type(i32* %72)
  %74 = load i64, i64* @IB_NODE_TYPE_CA, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %71
  %77 = load %struct.osm_opensm*, %struct.osm_opensm** %3, align 8
  %78 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %77, i32 0, i32 2
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @cc_send_ca_cong_setting(i32* %78, i32* %79, i32 %82)
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @IB_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  store i32 -1, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %76
  %89 = load %struct.osm_opensm*, %struct.osm_opensm** %3, align 8
  %90 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %89, i32 0, i32 2
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @cc_send_cct(i32* %90, i32* %91, i32 %94)
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @IB_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  store i32 -1, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %88
  br label %101

101:                                              ; preds = %100, %71
  br label %102

102:                                              ; preds = %101, %70
  br label %38

103:                                              ; preds = %38
  %104 = load %struct.osm_opensm*, %struct.osm_opensm** %3, align 8
  %105 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %104, i32 0, i32 1
  %106 = call i32 @cl_plock_release(i32* %105)
  %107 = load %struct.osm_opensm*, %struct.osm_opensm** %3, align 8
  %108 = getelementptr inbounds %struct.osm_opensm, %struct.osm_opensm* %107, i32 0, i32 0
  %109 = call i32 @OSM_LOG_EXIT(i32* %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %103, %25, %16
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i32 @cc_setup_mad_data(i32*) #1

declare dso_local i32 @cl_plock_acquire(i32*) #1

declare dso_local i32* @cl_qmap_head(i32*) #1

declare dso_local i32* @cl_qmap_end(i32*) #1

declare dso_local i32* @cl_qmap_next(i32*) #1

declare dso_local i64 @osm_node_get_type(i32*) #1

declare dso_local i64 @cc_send_sw_cong_setting(i32*, i32*) #1

declare dso_local i64 @cc_send_ca_cong_setting(i32*, i32*, i32) #1

declare dso_local i64 @cc_send_cct(i32*, i32*, i32) #1

declare dso_local i32 @cl_plock_release(i32*) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
