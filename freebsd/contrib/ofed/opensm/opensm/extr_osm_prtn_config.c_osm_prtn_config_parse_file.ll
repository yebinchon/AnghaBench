; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_osm_prtn_config_parse_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_osm_prtn_config_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.part_conf = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot open config file '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"PARSE ERROR: line %d: internal: cannot create config\0A\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_prtn_config_parse_file(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct.part_conf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.part_conf* null, %struct.part_conf** %9, align 8
  %16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %16, align 16
  %17 = load i8*, i8** %7, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %22, i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %26)
  store i32 -1, i32* %4, align 4
  br label %130

28:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %122, %28
  %30 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %31 = load i32*, i32** %10, align 8
  %32 = call i32* @fgets(i8* %30, i32 4095, i32* %31)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %123

34:                                               ; preds = %29
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  store i8* %35, i8** %14, align 8
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 35)
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i8*, i8** %13, align 8
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %43, %34
  br label %46

46:                                               ; preds = %115, %45
  br label %47

47:                                               ; preds = %64, %46
  %48 = load i8*, i8** %14, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %14, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 9
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %14, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 10
  br label %62

62:                                               ; preds = %57, %52, %47
  %63 = phi i1 [ true, %52 ], [ true, %47 ], [ %61, %57 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %14, align 8
  br label %47

67:                                               ; preds = %62
  %68 = load i8*, i8** %14, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %118

73:                                               ; preds = %67
  %74 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %75 = icmp ne %struct.part_conf* %74, null
  br i1 %75, label %89, label %76

76:                                               ; preds = %73
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call %struct.part_conf* @new_part_conf(i32* %77, i32* %78)
  store %struct.part_conf* %79, %struct.part_conf** %9, align 8
  %80 = icmp ne %struct.part_conf* %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @OSM_LOG_ERROR, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (i32*, i32, i8*, ...) @OSM_LOG(i32* %82, i32 %83, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @stderr, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  store i32 -1, i32* %12, align 4
  br label %118

89:                                               ; preds = %76, %73
  %90 = load i8*, i8** %14, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 59)
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i8*, i8** %13, align 8
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %94, %89
  %97 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @parse_part_conf(%struct.part_conf* %97, i8* %98, i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 -1, i32* %12, align 4
  br label %118

104:                                              ; preds = %96
  store i32 1, i32* %12, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %14, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.part_conf*, %struct.part_conf** %9, align 8
  %113 = call i32 @flush_part_conf(%struct.part_conf* %112)
  store %struct.part_conf* null, %struct.part_conf** %9, align 8
  br label %114

114:                                              ; preds = %111, %104
  br label %115

115:                                              ; preds = %114
  %116 = load i8*, i8** %13, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %46, label %118

118:                                              ; preds = %115, %103, %81, %72
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %123

122:                                              ; preds = %118
  br label %29

123:                                              ; preds = %121, %29
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @fclose(i32* %124)
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 1
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 0, i32 1
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %123, %21
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.part_conf* @new_part_conf(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @parse_part_conf(%struct.part_conf*, i8*, i32) #1

declare dso_local i32 @flush_part_conf(%struct.part_conf*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
