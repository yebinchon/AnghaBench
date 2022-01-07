; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_parse_dir_dateline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_parse_dir_dateline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ERR 4E0F: unknown dateline direction %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"ERR 4E10: dateline value for coordinate direction %d must be %d < dl < %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.torus*, i8*)* @parse_dir_dateline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dir_dateline(i32 %0, %struct.torus* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.torus*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.torus* %1, %struct.torus** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @strtok(i32* null, i8* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %103

16:                                               ; preds = %3
  %17 = load %struct.torus*, %struct.torus** %5, align 8
  %18 = icmp ne %struct.torus* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 1, i32* %10, align 4
  br label %103

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %64 [
    i32 1, label %22
    i32 2, label %36
    i32 3, label %50
  ]

22:                                               ; preds = %20
  %23 = load %struct.torus*, %struct.torus** %5, align 8
  %24 = getelementptr inbounds %struct.torus, %struct.torus* %23, i32 0, i32 5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.torus*, %struct.torus** %5, align 8
  %27 = getelementptr inbounds %struct.torus, %struct.torus* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32* %32, i32** %8, align 8
  %33 = load %struct.torus*, %struct.torus** %5, align 8
  %34 = getelementptr inbounds %struct.torus, %struct.torus* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  br label %72

36:                                               ; preds = %20
  %37 = load %struct.torus*, %struct.torus** %5, align 8
  %38 = getelementptr inbounds %struct.torus, %struct.torus* %37, i32 0, i32 5
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.torus*, %struct.torus** %5, align 8
  %41 = getelementptr inbounds %struct.torus, %struct.torus* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32* %46, i32** %8, align 8
  %47 = load %struct.torus*, %struct.torus** %5, align 8
  %48 = getelementptr inbounds %struct.torus, %struct.torus* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  br label %72

50:                                               ; preds = %20
  %51 = load %struct.torus*, %struct.torus** %5, align 8
  %52 = getelementptr inbounds %struct.torus, %struct.torus* %51, i32 0, i32 5
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load %struct.torus*, %struct.torus** %5, align 8
  %55 = getelementptr inbounds %struct.torus, %struct.torus* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i32* %60, i32** %8, align 8
  %61 = load %struct.torus*, %struct.torus** %5, align 8
  %62 = getelementptr inbounds %struct.torus, %struct.torus* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %9, align 4
  br label %72

64:                                               ; preds = %20
  %65 = load %struct.torus*, %struct.torus** %5, align 8
  %66 = getelementptr inbounds %struct.torus, %struct.torus* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* @OSM_LOG_ERROR, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (i32*, i32, i8*, i32, ...) @OSM_LOG(i32* %68, i32 %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %103

72:                                               ; preds = %50, %36, %22
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @strtol(i8* %73, i32* null, i32 0)
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp sle i32 %81, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %79, %72
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %85, %79
  %91 = load %struct.torus*, %struct.torus** %5, align 8
  %92 = getelementptr inbounds %struct.torus, %struct.torus* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* @OSM_LOG_ERROR, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 0, %97
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i32*, i32, i8*, i32, ...) @OSM_LOG(i32* %94, i32 %95, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %98, i32 %99)
  br label %102

101:                                              ; preds = %85
  store i32 1, i32* %10, align 4
  br label %102

102:                                              ; preds = %101, %90
  br label %103

103:                                              ; preds = %102, %64, %19, %15
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

declare dso_local i8* @strtok(i32*, i8*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
