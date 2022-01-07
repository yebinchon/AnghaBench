; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_partition_add_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_partition_add_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.part_conf = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"ipoib\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"defmember\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"limited\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [96 x i8] c"PARSE WARN: line %d: flag 'defmember' requires valid value (limited or full or both) - skipped\0A\00", align 1
@FULL = common dso_local global i32 0, align 4
@BOTH = common dso_local global i32 0, align 4
@LIMITED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"indx0\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [65 x i8] c"PARSE WARN: line %d: unrecognized partition flag '%s' - ignored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.part_conf*, i8*, i8*)* @partition_add_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_add_flag(i32 %0, %struct.part_conf* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.part_conf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.part_conf* %1, %struct.part_conf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %15 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %18 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %17, i32 0, i32 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i64 @parse_group_flag(i32 %13, i32 %16, i32* %18, i8* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %111

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %31 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %110

32:                                               ; preds = %24
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %92, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i64 @strncmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = call i64 @strncmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52, %37
  %59 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %60 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32, i32, i8*, i32, ...) @OSM_LOG(i32 %61, i32 %62, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  br label %91

65:                                               ; preds = %52, %46, %40
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @FULL, align 4
  %73 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %74 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  br label %90

75:                                               ; preds = %65
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @strlen(i8* %77)
  %79 = call i64 @strncmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @BOTH, align 4
  %83 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %84 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  br label %89

85:                                               ; preds = %75
  %86 = load i32, i32* @LIMITED, align 4
  %87 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %88 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %71
  br label %91

91:                                               ; preds = %90, %58
  br label %109

92:                                               ; preds = %32
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @TRUE, align 4
  %98 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %99 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %108

100:                                              ; preds = %92
  %101 = load %struct.part_conf*, %struct.part_conf** %7, align 8
  %102 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 (i32, i32, i8*, i32, ...) @OSM_LOG(i32 %103, i32 %104, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i32 %105, i8* %106)
  br label %108

108:                                              ; preds = %100, %96
  br label %109

109:                                              ; preds = %108, %91
  br label %110

110:                                              ; preds = %109, %29
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %23
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @parse_group_flag(i32, i32, i32*, i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @OSM_LOG(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
