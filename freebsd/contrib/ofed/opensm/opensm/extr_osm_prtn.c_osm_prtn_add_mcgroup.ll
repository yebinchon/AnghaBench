; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_osm_prtn_add_mcgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_osm_prtn_add_mcgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_21__, i32, i32, i32, i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@OSM_DEFAULT_MGRP_SCOPE = common dso_local global i32 0, align 4
@IB_MC_SCOPE_LINK_LOCAL = common dso_local global i32 0, align 4
@IB_HOPLIMIT_MAX = common dso_local global i32 0, align 4
@IB_PATH_SELECTOR_EXACTLY = common dso_local global i32 0, align 4
@IB_MC_REC_STATE_FULL_MEMBER = common dso_local global i32 0, align 4
@IB_MCR_COMPMASK_MTU = common dso_local global i32 0, align 4
@IB_MCR_COMPMASK_MTU_SEL = common dso_local global i32 0, align 4
@IB_MCR_COMPMASK_RATE = common dso_local global i32 0, align 4
@IB_MCR_COMPMASK_RATE_SEL = common dso_local global i32 0, align 4
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to create MC group (%s) with pkey 0x%04x\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@IB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_prtn_add_mcgroup(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_19__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.TYPE_21__* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_20__, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %23, align 8
  %33 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %24, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %25, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  store i32* %40, i32** %30, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cl_hton16(i32 32768)
  %45 = or i32 %43, %44
  store i32 %45, i32* %28, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %11
  %49 = load i32, i32* @OSM_DEFAULT_MGRP_SCOPE, align 4
  store i32 %49, i32* %19, align 4
  br label %50

50:                                               ; preds = %48, %11
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* @IB_MC_SCOPE_LINK_LOCAL, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @IB_HOPLIMIT_MAX, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 0, %54 ], [ %56, %55 ]
  store i32 %58, i32* %31, align 4
  %59 = call i32 @memset(%struct.TYPE_20__* %26, i32 0, i32 36)
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 4
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %62 = bitcast %struct.TYPE_21__* %60 to i8*
  %63 = bitcast %struct.TYPE_21__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @CL_HTON32(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @IB_PATH_SELECTOR_EXACTLY, align 4
  %69 = shl i32 %68, 6
  %70 = or i32 %67, %69
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %21, align 4
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %28, align 4
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @IB_PATH_SELECTOR_EXACTLY, align 4
  %78 = shl i32 %77, 6
  %79 = or i32 %76, %78
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 7
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %22, align 4
  %88 = load i32, i32* %31, align 4
  %89 = call i32 @ib_member_set_sl_flow_hop(i32 %86, i32 %87, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 6
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* @IB_MC_REC_STATE_FULL_MEMBER, align 4
  %93 = call i32 @ib_member_set_scope_state(i32 %91, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 5
  store i32 %93, i32* %94, align 4
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 4
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @ib_mgid_set_scope(%struct.TYPE_21__* %95, i32 %96)
  %98 = load i32, i32* @IB_MCR_COMPMASK_MTU, align 4
  %99 = load i32, i32* @IB_MCR_COMPMASK_MTU_SEL, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @IB_MCR_COMPMASK_RATE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @IB_MCR_COMPMASK_RATE_SEL, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %27, align 4
  %105 = load i32*, i32** %30, align 8
  %106 = load i32, i32* %27, align 4
  %107 = call i32* @osm_mcmr_rcv_find_or_create_new_mgrp(i32* %105, i32 %106, %struct.TYPE_20__* %26)
  store i32* %107, i32** %29, align 8
  %108 = load i32*, i32** %29, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %123, label %110

110:                                              ; preds = %57
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* @OSM_LOG_ERROR, align 4
  %113 = load i32, i32* @AF_INET6, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = trunc i64 %34 to i32
  %118 = call i32 @inet_ntop(i32 %113, i32 %116, i8* %36, i32 %117)
  %119 = load i32, i32* %28, align 4
  %120 = call i32 @cl_ntoh16(i32 %119)
  %121 = call i32 @OSM_LOG(i32* %111, i32 %112, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %120)
  %122 = load i32, i32* @IB_ERROR, align 4
  store i32 %122, i32* %12, align 4
  store i32 1, i32* %32, align 4
  br label %131

123:                                              ; preds = %57
  %124 = load i32*, i32** %13, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %126 = load i32*, i32** %29, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %129 = load i32, i32* %28, align 4
  %130 = call i32 @track_mgrp_w_partition(i32* %124, %struct.TYPE_19__* %125, i32* %126, %struct.TYPE_18__* %127, %struct.TYPE_21__* %128, i32 %129)
  store i32 %130, i32* %12, align 4
  store i32 1, i32* %32, align 4
  br label %131

131:                                              ; preds = %123, %110
  %132 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %12, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cl_hton16(i32) #2

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @CL_HTON32(i32) #2

declare dso_local i32 @ib_member_set_sl_flow_hop(i32, i32, i32) #2

declare dso_local i32 @ib_member_set_scope_state(i32, i32) #2

declare dso_local i32 @ib_mgid_set_scope(%struct.TYPE_21__*, i32) #2

declare dso_local i32* @osm_mcmr_rcv_find_or_create_new_mgrp(i32*, i32, %struct.TYPE_20__*) #2

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @inet_ntop(i32, i32, i8*, i32) #2

declare dso_local i32 @cl_ntoh16(i32) #2

declare dso_local i32 @track_mgrp_w_partition(i32*, %struct.TYPE_19__*, i32*, %struct.TYPE_18__*, %struct.TYPE_21__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
