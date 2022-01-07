; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_ftree.c_fabric_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_ftree.c_fabric_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }

@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [174 x i8] c"\0A                       |-------------------------------|\0A                       |-  Full fabric topology dump  -|\0A                       |-------------------------------|\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-- CAs:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"-- Rank %u switches\0A\00", align 1
@.str.3 = private unnamed_addr constant [198 x i8] c"\0A                       |---------------------------------------|\0A                       |- Full fabric topology dump completed -|\0A                       |---------------------------------------|\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @fabric_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fabric_dump(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %11 = call i32 @OSM_LOG_IS_ACTIVE_V2(i32* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %20 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %18, i32 %19, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %26 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %24, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = call i64 @cl_qmap_head(i32* %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %4, align 8
  br label %31

31:                                               ; preds = %42, %14
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = call i64 @cl_qmap_end(i32* %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_12__*
  %37 = icmp ne %struct.TYPE_12__* %32, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = call i32 @hca_dump(%struct.TYPE_13__* %39, %struct.TYPE_12__* %40)
  br label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = call i64 @cl_qmap_next(i32* %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %4, align 8
  br label %31

47:                                               ; preds = %31
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %90, %47
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %49, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %48
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %60 = load i64, i64* %3, align 8
  %61 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %58, i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = call i64 @cl_qmap_head(i32* %63)
  %65 = inttoptr i64 %64 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %5, align 8
  br label %66

66:                                               ; preds = %84, %54
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = call i64 @cl_qmap_end(i32* %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_11__*
  %72 = icmp ne %struct.TYPE_11__* %67, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %3, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = call i32 @sw_dump(%struct.TYPE_13__* %80, %struct.TYPE_11__* %81)
  br label %83

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = call i64 @cl_qmap_next(i32* %86)
  %88 = inttoptr i64 %87 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %5, align 8
  br label %66

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %3, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %3, align 8
  br label %48

93:                                               ; preds = %48
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %99 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %97, i32 %98, i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %93, %13
  ret void
}

declare dso_local i32 @OSM_LOG_IS_ACTIVE_V2(i32*, i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i64 @cl_qmap_head(i32*) #1

declare dso_local i64 @cl_qmap_end(i32*) #1

declare dso_local i32 @hca_dump(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i64 @cl_qmap_next(i32*) #1

declare dso_local i32 @sw_dump(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
