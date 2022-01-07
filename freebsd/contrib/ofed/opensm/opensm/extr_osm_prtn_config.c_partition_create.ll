; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_partition_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_partition_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.part_conf = type { %struct.TYPE_9__, %struct.TYPE_10__*, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64, i32, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.precreate_mgroup = type { %struct.TYPE_8__, %struct.TYPE_12__ }
%struct.TYPE_8__ = type { i64, i32, i32, i64, i32, i32 }

@OSM_DEFAULT_SL = common dso_local global i64 0, align 8
@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Overriding SL %d to default SL %d on partition %s as QoS is not enabled.\0A\00", align 1
@osm_ipoib_broadcast_mgid = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@OSM_IPOIB_BROADCAST_MGRP_QKEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.part_conf*, i8*, i8*, i8*, i8*)* @partition_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_create(i32 %0, %struct.part_conf* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.part_conf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.precreate_mgroup, align 8
  store i32 %0, i32* %8, align 4
  store %struct.part_conf* %1, %struct.part_conf** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %6
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isdigit(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i8*, i8** %10, align 8
  store i8* %28, i8** %11, align 8
  store i8* null, i8** %10, align 8
  br label %29

29:                                               ; preds = %27, %22, %19, %6
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i8*, i8** %11, align 8
  %34 = call i64 @strtoul(i8* %33, i8** %15, i32 0)
  %35 = trunc i64 %34 to i32
  %36 = call i32 @cl_hton16(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i8*, i8** %15, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load i8*, i8** %15, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %32
  store i32 -1, i32* %7, align 4
  br label %174

46:                                               ; preds = %40
  br label %48

47:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %50 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %53 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %52, i32 0, i32 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call %struct.TYPE_10__* @osm_prtn_make_new(i32 %51, %struct.TYPE_11__* %54, i8* %55, i32 %56)
  %58 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %59 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %58, i32 0, i32 1
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %59, align 8
  %60 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %61 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = icmp ne %struct.TYPE_10__* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %48
  store i32 -1, i32* %7, align 4
  br label %174

65:                                               ; preds = %48
  %66 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %67 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %66, i32 0, i32 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %65
  %74 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %75 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @OSM_DEFAULT_SL, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %73
  %81 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %82 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %85 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %86 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @OSM_DEFAULT_SL, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @OSM_LOG(i32 %83, i32 %84, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %88, i64 %89, i8* %90)
  %92 = load i64, i64* @OSM_DEFAULT_SL, align 8
  %93 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %94 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  br label %96

96:                                               ; preds = %80, %73, %65
  %97 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %98 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %102 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i64 %100, i64* %104, align 8
  %105 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %106 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %173

109:                                              ; preds = %96
  %110 = call i32 @memset(%struct.precreate_mgroup* %16, i32 0, i32 40)
  %111 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %16, i32 0, i32 1
  %112 = bitcast %struct.TYPE_12__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 bitcast (%struct.TYPE_12__* @osm_ipoib_broadcast_mgid to i8*), i64 8, i1 false)
  %113 = call i32 @CL_HTON16(i32 32768)
  %114 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %115 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %114, i32 0, i32 1
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %113, %118
  store i32 %119, i32* %14, align 4
  %120 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %16, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = call i32 @memcpy(i32* %123, i32* %14, i32 4)
  %125 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %126 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %16, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 4
  %131 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %132 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %16, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %138 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %16, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %144 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %109
  %149 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %150 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  br label %155

153:                                              ; preds = %109
  %154 = load i64, i64* @OSM_IPOIB_BROADCAST_MGRP_QKEY, align 8
  br label %155

155:                                              ; preds = %153, %148
  %156 = phi i64 [ %152, %148 ], [ %154, %153 ]
  %157 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %16, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  store i64 %156, i64* %158, align 8
  %159 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %160 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %16, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  %165 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %166 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %16, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  %171 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %172 = call i32 @__create_mgrp(%struct.part_conf* %171, %struct.precreate_mgroup* %16)
  br label %173

173:                                              ; preds = %155, %96
  store i32 0, i32* %7, align 4
  br label %174

174:                                              ; preds = %173, %64, %45
  %175 = load i32, i32* %7, align 4
  ret i32 %175
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @cl_hton16(i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.TYPE_10__* @osm_prtn_make_new(i32, %struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*, i64, i64, i8*) #1

declare dso_local i32 @memset(%struct.precreate_mgroup*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CL_HTON16(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @__create_mgrp(%struct.part_conf*, %struct.precreate_mgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
