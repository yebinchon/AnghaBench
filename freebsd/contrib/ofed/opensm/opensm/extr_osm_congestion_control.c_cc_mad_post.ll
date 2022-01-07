; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_cc_mad_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_congestion_control.c_cc_mad_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_24__, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8*, i8*, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i64, i8*, i64, i32, i64, i64, i8*, i32 }

@IB_MCLASS_CC = common dso_local global i32 0, align 4
@IB_MAD_METHOD_SET = common dso_local global i8* null, align 8
@IB_CC_LOG_DATA_SIZE = common dso_local global i32 0, align 4
@IB_QP1 = common dso_local global i32 0, align 4
@IB_QP1_WELL_KNOWN_Q_KEY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CL_DISP_MSGID_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_26__*, i32*, i32*, i32, i8*)* @cc_mad_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_mad_post(%struct.TYPE_16__* %0, %struct.TYPE_26__* %1, i32* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store %struct.TYPE_25__* %19, %struct.TYPE_25__** %13, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @OSM_LOG_ENTER(i32 %22)
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @osm_physp_get_port_num(i32* %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %27 = call %struct.TYPE_17__* @osm_madw_get_cc_mad_ptr(%struct.TYPE_26__* %26)
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %14, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @IB_MCLASS_CC, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 9
  store i32 %31, i32* %34, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  store i32 2, i32* %37, align 4
  %38 = load i8*, i8** @IB_MAD_METHOD_SET, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 8
  store i8* %38, i8** %41, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 5
  %50 = call i64 @cl_atomic_inc(i32* %49)
  %51 = trunc i64 %50 to i32
  %52 = call i8* @cl_hton64(i32 %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  store i64 %53, i64* %56, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %6
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 5
  %65 = call i64 @cl_atomic_inc(i32* %64)
  %66 = trunc i64 %65 to i32
  %67 = call i8* @cl_hton64(i32 %66)
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  store i64 %68, i64* %71, align 8
  br label %72

72:                                               ; preds = %62, %6
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 5
  store i32 %73, i32* %76, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 3
  store i8* %80, i8** %83, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IB_CC_LOG_DATA_SIZE, align 4
  %93 = call i32 @memset(i32 %91, i8 signext 0, i32 %92)
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @osm_node_get_base_lid(i32* %94, i32 %95)
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* @IB_QP1, align 4
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 1
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* @IB_QP1_WELL_KNOWN_Q_KEY, align 4
  %107 = call i32 @cl_hton32(i32 %106)
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  store i32 %107, i32* %112, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @CL_DISP_MSGID_NONE, align 4
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @osm_node_get_node_guid(i32* %119)
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 4
  store i32 %120, i32* %124, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = call i32 @osm_physp_get_port_guid(i32* %125)
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 3
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 2
  store i32 %131, i32* %135, align 8
  %136 = load i8*, i8** @IB_MAD_METHOD_SET, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 1
  store i8* %136, i8** %140, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  store i8* %141, i8** %145, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 2
  %148 = call i32 @cl_spinlock_acquire(i32* %147)
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 4
  %151 = call i64 @cl_atomic_inc(i32* %150)
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 0
  %156 = call i32 @cl_qlist_insert_tail(i32* %153, i32* %155)
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = call i32 @cl_spinlock_release(i32* %158)
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = call i32 @cl_event_signal(i32* %161)
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @OSM_LOG_EXIT(i32 %165)
  ret void
}

declare dso_local i32 @OSM_LOG_ENTER(i32) #1

declare dso_local i32 @osm_physp_get_port_num(i32*) #1

declare dso_local %struct.TYPE_17__* @osm_madw_get_cc_mad_ptr(%struct.TYPE_26__*) #1

declare dso_local i8* @cl_hton64(i32) #1

declare dso_local i64 @cl_atomic_inc(i32*) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @osm_node_get_base_lid(i32*, i32) #1

declare dso_local i32 @cl_hton32(i32) #1

declare dso_local i32 @osm_node_get_node_guid(i32*) #1

declare dso_local i32 @osm_physp_get_port_guid(i32*) #1

declare dso_local i32 @cl_spinlock_acquire(i32*) #1

declare dso_local i32 @cl_qlist_insert_tail(i32*, i32*) #1

declare dso_local i32 @cl_spinlock_release(i32*) #1

declare dso_local i32 @cl_event_signal(i32*) #1

declare dso_local i32 @OSM_LOG_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
