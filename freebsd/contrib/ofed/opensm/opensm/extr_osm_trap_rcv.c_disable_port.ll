; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_trap_rcv.c_disable_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_trap_rcv.c_disable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_25__*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_24__ = type { i64 }

@IB_SMP_DATA_SIZE = common dso_local global i32 0, align 4
@IB_LINK_DOWN = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_DISABLED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@IB_NODE_TYPE_SWITCH = common dso_local global i64 0, align 8
@IB_MAD_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@CL_DISP_MSGID_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_25__*)* @disable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_port(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_26__, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %13 = load i32, i32* @IB_SMP_DATA_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %8, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %21 = icmp ne %struct.TYPE_25__* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %26, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  store %struct.TYPE_25__* %37, %struct.TYPE_25__** %4, align 8
  br label %38

38:                                               ; preds = %34, %22, %2
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  %41 = call i32 @memcpy(i32* %16, i32* %40, i32 16)
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %43 = load i32, i32* @IB_LINK_DOWN, align 4
  %44 = call i32 @ib_port_info_set_port_state(%struct.TYPE_27__* %42, i32 %43)
  %45 = load i32, i32* @IB_PORT_PHYS_STATE_DISABLED, align 4
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %47 = call i32 @ib_port_info_set_port_phys_state(i32 %45, %struct.TYPE_27__* %46)
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @osm_node_get_node_guid(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %55 = call i32 @osm_physp_get_port_guid(%struct.TYPE_25__* %54)
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @TRUE, align 4
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** @FALSE, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @FALSE, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @FALSE, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @osm_node_get_type(i32 %72)
  %74 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %38
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %78 = call i64 @osm_physp_get_port_num(%struct.TYPE_25__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.TYPE_25__* @osm_node_get_physp_ptr(i32 %83, i32 0)
  store %struct.TYPE_25__* %84, %struct.TYPE_25__** %9, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = call i32 @ib_port_info_get_m_key(i32* %86)
  store i32 %87, i32* %11, align 4
  br label %92

88:                                               ; preds = %76, %38
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = call i32 @ib_port_info_get_m_key(i32* %90)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %88, %80
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @osm_node_get_type(i32 %95)
  %97 = load i64, i64* @IB_NODE_TYPE_SWITCH, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %92
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %109 = call i32 @osm_physp_get_port_guid(%struct.TYPE_25__* %108)
  %110 = call %struct.TYPE_24__* @osm_get_port_by_guid(%struct.TYPE_20__* %107, i32 %109)
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %10, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %104, %99
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %116, %92
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %127 = call i32 @osm_physp_get_dr_path_ptr(%struct.TYPE_25__* %126)
  %128 = mul nuw i64 4, %14
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* @IB_MAD_ATTR_PORT_INFO, align 4
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %132 = call i64 @osm_physp_get_port_num(%struct.TYPE_25__* %131)
  %133 = call i32 @cl_hton32(i64 %132)
  %134 = load i8*, i8** @FALSE, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @CL_DISP_MSGID_NONE, align 4
  %137 = call i32 @osm_req_set(%struct.TYPE_23__* %125, i32 %127, i32* %16, i32 %129, i32 %130, i32 %133, i8* %134, i32 %135, i32 %136, %struct.TYPE_26__* %7)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %139)
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ib_port_info_set_port_state(%struct.TYPE_27__*, i32) #2

declare dso_local i32 @ib_port_info_set_port_phys_state(i32, %struct.TYPE_27__*) #2

declare dso_local i32 @osm_node_get_node_guid(i32) #2

declare dso_local i32 @osm_physp_get_port_guid(%struct.TYPE_25__*) #2

declare dso_local i64 @osm_node_get_type(i32) #2

declare dso_local i64 @osm_physp_get_port_num(%struct.TYPE_25__*) #2

declare dso_local %struct.TYPE_25__* @osm_node_get_physp_ptr(i32, i32) #2

declare dso_local i32 @ib_port_info_get_m_key(i32*) #2

declare dso_local %struct.TYPE_24__* @osm_get_port_by_guid(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @osm_req_set(%struct.TYPE_23__*, i32, i32*, i32, i32, i32, i8*, i32, i32, %struct.TYPE_26__*) #2

declare dso_local i32 @osm_physp_get_dr_path_ptr(%struct.TYPE_25__*) #2

declare dso_local i32 @cl_hton32(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
