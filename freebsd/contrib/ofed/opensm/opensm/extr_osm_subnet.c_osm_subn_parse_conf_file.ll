; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_subnet.c_osm_subn_parse_conf_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_subnet.c_osm_subn_parse_conf_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 (i32*, i8*, i8*, i8*, i8*, i32*)*, i64 }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot open file '%s': %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c" Reading Cached Option File: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@opt_tbl = common dso_local global %struct.TYPE_10__* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c" Unrecognized token: \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_subn_parse_conf_file(i8* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @ENOENT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %132

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* @errno, align 8
  %27 = call i8* @strerror(i64 %26)
  %28 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %27)
  store i32 -1, i32* %3, align 4
  br label %132

29:                                               ; preds = %2
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %29
  %40 = call %struct.TYPE_11__* @malloc(i32 16)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %42, align 8
  %43 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @fclose(i32* %45)
  store i32 -1, i32* %3, align 4
  br label %132

47:                                               ; preds = %39, %29
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = call i32 @memcpy(%struct.TYPE_11__* %50, %struct.TYPE_9__* %51, i32 16)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %126, %74, %47
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %59 = load i32*, i32** %7, align 8
  %60 = call i32* @fgets(i8* %58, i32 1023, i32* %59)
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %127

62:                                               ; preds = %57
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %64 = call i8* @strchr(i8* %63, i8 signext 35)
  store i8* %64, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i8*, i8** %10, align 8
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %67, %62
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %71 = call i8* @strtok_r(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %9)
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %57

75:                                               ; preds = %69
  %76 = load i8*, i8** %9, align 8
  %77 = call i8* @clean_val(i8* %76)
  store i8* %77, i8** %9, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @opt_tbl, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %11, align 8
  br label %79

79:                                               ; preds = %117, %75
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %120

84:                                               ; preds = %79
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i64 @strcmp(i64 %87, i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %117

92:                                               ; preds = %84
  store i32 1, i32* %14, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = bitcast %struct.TYPE_11__* %95 to i8*
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr i8, i8* %96, i64 %100
  store i8* %101, i8** %12, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = bitcast %struct.TYPE_9__* %102 to i8*
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr i8, i8* %103, i64 %107
  store i8* %108, i8** %13, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32 (i32*, i8*, i8*, i8*, i8*, i32*)*, i32 (i32*, i8*, i8*, i8*, i8*, i32*)** %110, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 %111(i32* null, i8* %112, i8* %113, i8* %114, i8* %115, i32* null)
  br label %120

117:                                              ; preds = %91
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 1
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %11, align 8
  br label %79

120:                                              ; preds = %92, %79
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @log_report(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %123, %120
  br label %57

127:                                              ; preds = %57
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @fclose(i32* %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %131 = call i32 @osm_subn_verify_config(%struct.TYPE_9__* %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %44, %24, %23
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local %struct.TYPE_11__* @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i8* @clean_val(i8*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @log_report(i8*, i8*) #1

declare dso_local i32 @osm_subn_verify_config(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
