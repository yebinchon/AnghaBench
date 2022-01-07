; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_osm_console.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_console.c_osm_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 (%struct.TYPE_10__*, i64)* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i64, i32, i32, i32 }
%struct.pollfd = type { i64, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@loop_command = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@POLLHUP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_console(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [2 x %struct.pollfd], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pollfd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %10, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 16
  %18 = load i32, i32* @POLLIN, align 4
  %19 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  %22 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %21, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  %28 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 16
  %29 = load i32, i32* @POLLIN, align 4
  %30 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %32, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  br label %42

40:                                               ; preds = %1
  %41 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 0
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi %struct.pollfd* [ %39, %38 ], [ %41, %40 ]
  store %struct.pollfd* %43, %struct.pollfd** %8, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  %50 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 16
  %52 = icmp slt i64 %51, 0
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i1 [ true, %42 ], [ %52, %48 ]
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 2
  store i32 %56, i32* %9, align 4
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @loop_command, i32 0, i32 0), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %53
  %60 = call i64 (...) @loop_command_check_time()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %59
  %63 = load i32 (%struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_10__*, i64)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @loop_command, i32 0, i32 1), align 8
  %64 = icmp ne i32 (%struct.TYPE_10__*, i64)* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load i32 (%struct.TYPE_10__*, i64)*, i32 (%struct.TYPE_10__*, i64)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @loop_command, i32 0, i32 1), align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 %71(%struct.TYPE_10__* %72, i64 %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @fflush(i64 %79)
  br label %82

81:                                               ; preds = %65
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @loop_command, i32 0, i32 0), align 8
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %62, %59, %53
  %84 = load %struct.pollfd*, %struct.pollfd** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @poll(%struct.pollfd* %84, i32 %85, i32 1000)
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %136

89:                                               ; preds = %83
  %90 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  %91 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @POLLIN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %89
  store i8* null, i8** %5, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @getline(i8** %5, i64* %6, i32 %99)
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = call i32 @parse_cmd_line(i8* %104, %struct.TYPE_10__* %105)
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @loop_command, i32 0, i32 0), align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @osm_console_prompt(i64 %112)
  br label %114

114:                                              ; preds = %109, %103
  br label %120

115:                                              ; preds = %96
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = call i32 @cio_close(%struct.TYPE_11__* %116, i32* %118)
  br label %120

120:                                              ; preds = %115, %114
  %121 = load i8*, i8** %5, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @free(i8* %124)
  br label %126

126:                                              ; preds = %123, %120
  store i32 0, i32* %2, align 4
  br label %136

127:                                              ; preds = %89
  %128 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %4, i64 0, i64 1
  %129 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @POLLHUP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 -1, i32* %2, align 4
  br label %136

135:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %134, %126, %88
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i64 @loop_command_check_time(...) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i64 @getline(i8**, i64*, i32) #1

declare dso_local i32 @parse_cmd_line(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @osm_console_prompt(i64) #1

declare dso_local i32 @cio_close(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
