; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_path_record.c_pr_process_multicast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_path_record.c_pr_process_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_18__, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_24__ }

@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Multicast destination requested\0A\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"ERR 1F09: No MC group found for PathRecord destination GID %s\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@IB_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"ERR 1F19: MC group attributes don't match PathRecord request\0A\00", align 1
@SA_PR_RESP_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"ERR 1F18: Unable to allocate path record for MC group\0A\00", align 1
@IB_PATH_SELECTOR_EXACTLY = common dso_local global i32 0, align 4
@IB_MC_SCOPE_LINK_LOCAL = common dso_local global i64 0, align 8
@IB_HOPLIMIT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32*, i32*)* @pr_process_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_process_multicast(%struct.TYPE_21__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.TYPE_24__* @ib_sa_mad_get_payload_ptr(i32* %16)
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %7, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %22 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %20, i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 8
  %28 = call %struct.TYPE_23__* @osm_get_mgrp_by_mgid(i32 %25, %struct.TYPE_18__* %27)
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %8, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %30 = icmp ne %struct.TYPE_23__* %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %14, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OSM_LOG_ERROR, align 4
  %40 = load i32, i32* @AF_INET6, align 4
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = trunc i64 %33 to i32
  %46 = call i32 @inet_ntop(i32 %40, i32 %44, i8* %35, i32 %45)
  %47 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %38, i32 %39, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %48)
  br label %189

49:                                               ; preds = %3
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %53 = call i64 @pr_match_mgrp_attributes(%struct.TYPE_21__* %50, i32* %51, %struct.TYPE_23__* %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @IB_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @OSM_LOG_ERROR, align 4
  %62 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %60, i32 %61, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %189

63:                                               ; preds = %49
  %64 = load i32, i32* @SA_PR_RESP_SIZE, align 4
  %65 = call %struct.TYPE_22__* @malloc(i32 %64)
  store %struct.TYPE_22__* %65, %struct.TYPE_22__** %10, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %67 = icmp eq %struct.TYPE_22__* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @OSM_LOG_ERROR, align 4
  %73 = call i32 (i32, i32, i8*, ...) @OSM_LOG(i32 %71, i32 %72, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %189

74:                                               ; preds = %63
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %76 = call i32 @memset(%struct.TYPE_22__* %75, i32 0, i32 4)
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %81 = bitcast %struct.TYPE_24__* %79 to i8*
  %82 = bitcast %struct.TYPE_24__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 36, i1 false)
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = bitcast %struct.TYPE_18__* %86 to i8*
  %91 = bitcast %struct.TYPE_18__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 4, i1 false)
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 7
  store i32 %95, i32* %99, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 6
  store i32 %103, i32* %107, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 5
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* @IB_PATH_SELECTOR_EXACTLY, align 4
  %121 = shl i32 %120, 6
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %121, %125
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 1
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* @IB_PATH_SELECTOR_EXACTLY, align 4
  %132 = shl i32 %131, 6
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %132, %136
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 2
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* @IB_PATH_SELECTOR_EXACTLY, align 4
  %143 = shl i32 %142, 6
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %143, %147
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 3
  store i32 %148, i32* %152, align 4
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ib_member_get_sl_flow_hop(i32 %156, i32* %12, i32* %11, i32* %13)
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @ib_path_rec_set_sl(%struct.TYPE_24__* %160, i32 %161)
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = call i32 @ib_path_rec_set_qos_class(%struct.TYPE_24__* %165, i32 0)
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 3
  %170 = call i64 @ib_mgid_get_scope(%struct.TYPE_18__* %169)
  %171 = load i64, i64* @IB_MC_SCOPE_LINK_LOCAL, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %74
  %174 = load i32, i32* @IB_HOPLIMIT_MAX, align 4
  store i32 %174, i32* %13, align 4
  br label %175

175:                                              ; preds = %173, %74
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @cl_hton32(i32 %176)
  %178 = load i32, i32* %11, align 4
  %179 = shl i32 %178, 8
  %180 = or i32 %177, %179
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 4
  store i32 %180, i32* %184, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = call i32 @cl_qlist_insert_tail(i32* %185, i32* %187)
  br label %189

189:                                              ; preds = %175, %68, %57, %31
  ret void
}

declare dso_local %struct.TYPE_24__* @ib_sa_mad_get_payload_ptr(i32*) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_23__* @osm_get_mgrp_by_mgid(i32, %struct.TYPE_18__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @inet_ntop(i32, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @pr_match_mgrp_attributes(%struct.TYPE_21__*, i32*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ib_member_get_sl_flow_hop(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ib_path_rec_set_sl(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ib_path_rec_set_qos_class(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ib_mgid_get_scope(%struct.TYPE_18__*) #1

declare dso_local i32 @cl_hton32(i32) #1

declare dso_local i32 @cl_qlist_insert_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
