; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_osm_prtn_make_partitions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_osm_prtn_make_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.stat = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@IB_SUCCESS = common dso_local global i64 0, align 8
@OSM_DEFAULT_PARTITION_CONFIG_FILE = common dso_local global i8* null, align 8
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Partition configuration %s is not accessible (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@global_pkey_counter = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Partition configuration was not fully processed\0A\00", align 1
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Partition configuration in error; retrying with default config\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @osm_prtn_make_partitions(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %12 = load i64, i64* @TRUE, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* @IB_SUCCESS, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %27

25:                                               ; preds = %2
  %26 = load i8*, i8** @OSM_DEFAULT_PARTITION_CONFIG_FILE, align 8
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i8* [ %24, %20 ], [ %26, %25 ]
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @stat(i8* %29, %struct.stat* %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %33, i32 %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %37)
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %32, %27
  br label %41

41:                                               ; preds = %129, %40
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i32* @cl_qmap_head(i32* %43)
  store i32* %44, i32** %10, align 8
  br label %45

45:                                               ; preds = %51, %41
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = call i32* @cl_qmap_end(i32* %48)
  %50 = icmp ne i32* %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i32*, i32** %10, align 8
  %53 = bitcast i32* %52 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %11, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = call i32* @cl_qmap_next(i32* %55)
  store i32* %56, i32** %10, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = call i32 @cl_map_remove_all(i32* %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = call i32 @cl_map_remove_all(i32* %61)
  br label %45

63:                                               ; preds = %45
  store i64 0, i64* @global_pkey_counter, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @prtn_make_default(i32* %64, %struct.TYPE_10__* %65, i32 %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @IB_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %135

75:                                               ; preds = %63
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @osm_prtn_config_parse_file(i32* %79, %struct.TYPE_10__* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %87 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %85, i32 %86, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i64, i64* @TRUE, align 8
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %84, %78, %75
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = call i32* @cl_qmap_head(i32* %91)
  store i32* %92, i32** %10, align 8
  br label %93

93:                                               ; preds = %122, %89
  %94 = load i32*, i32** %10, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = call i32* @cl_qmap_end(i32* %96)
  %98 = icmp ne i32* %94, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %93
  %100 = load i32*, i32** %10, align 8
  %101 = bitcast i32* %100 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %11, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = call i32* @cl_qmap_next(i32* %103)
  store i32* %104, i32** %10, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = call i64 @cl_map_count(i32* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %99
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = call i64 @cl_map_count(i32* %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %118 = bitcast %struct.TYPE_11__* %117 to i32*
  %119 = call i32 @cl_qmap_remove_item(i32* %116, i32* %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = call i32 @osm_prtn_delete(%struct.TYPE_10__* %120, %struct.TYPE_11__** %11)
  br label %122

122:                                              ; preds = %114, %109, %99
  br label %93

123:                                              ; preds = %93
  %124 = load i64, i64* %7, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load i64, i64* %8, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* @OSM_LOG_ERROR, align 4
  %132 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %130, i32 %131, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i64, i64* @FALSE, align 8
  store i64 %133, i64* %7, align 8
  br label %41

134:                                              ; preds = %126, %123
  br label %135

135:                                              ; preds = %134, %74
  %136 = load i64, i64* %9, align 8
  ret i64 %136
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @cl_qmap_head(i32*) #1

declare dso_local i32* @cl_qmap_end(i32*) #1

declare dso_local i32* @cl_qmap_next(i32*) #1

declare dso_local i32 @cl_map_remove_all(i32*) #1

declare dso_local i64 @prtn_make_default(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @osm_prtn_config_parse_file(i32*, %struct.TYPE_10__*, i8*) #1

declare dso_local i64 @cl_map_count(i32*) #1

declare dso_local i32 @cl_qmap_remove_item(i32*, i32*) #1

declare dso_local i32 @osm_prtn_delete(%struct.TYPE_10__*, %struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
