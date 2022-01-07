; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_alloc_flink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_alloc_flink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32 }
%struct.fabric = type { i64, i64, %struct.link**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ERR 4E04: realloc: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ERR 4E05: calloc: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.link* (%struct.fabric*)* @alloc_flink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.link* @alloc_flink(%struct.fabric* %0) #0 {
  %2 = alloca %struct.fabric*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.link*, align 8
  %5 = alloca i8*, align 8
  store %struct.fabric* %0, %struct.fabric** %2, align 8
  store %struct.link* null, %struct.link** %4, align 8
  %6 = load %struct.fabric*, %struct.fabric** %2, align 8
  %7 = getelementptr inbounds %struct.fabric, %struct.fabric* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.fabric*, %struct.fabric** %2, align 8
  %10 = getelementptr inbounds %struct.fabric, %struct.fabric* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp uge i64 %8, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %1
  %14 = load %struct.fabric*, %struct.fabric** %2, align 8
  %15 = getelementptr inbounds %struct.fabric, %struct.fabric* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = mul i64 5, %16
  %18 = udiv i64 %17, 4
  %19 = add i64 16, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load %struct.fabric*, %struct.fabric** %2, align 8
  %22 = getelementptr inbounds %struct.fabric, %struct.fabric* %21, i32 0, i32 2
  %23 = load %struct.link**, %struct.link*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i8* @realloc(%struct.link** %23, i32 %27)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %13
  %32 = load %struct.fabric*, %struct.fabric** %2, align 8
  %33 = getelementptr inbounds %struct.fabric, %struct.fabric* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* @OSM_LOG_ERROR, align 4
  %37 = load i32, i32* @errno, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 @OSM_LOG(i32* %35, i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %89

40:                                               ; preds = %13
  %41 = load i8*, i8** %5, align 8
  %42 = bitcast i8* %41 to %struct.link**
  %43 = load %struct.fabric*, %struct.fabric** %2, align 8
  %44 = getelementptr inbounds %struct.fabric, %struct.fabric* %43, i32 0, i32 2
  store %struct.link** %42, %struct.link*** %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = load %struct.fabric*, %struct.fabric** %2, align 8
  %48 = getelementptr inbounds %struct.fabric, %struct.fabric* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.fabric*, %struct.fabric** %2, align 8
  %50 = getelementptr inbounds %struct.fabric, %struct.fabric* %49, i32 0, i32 2
  %51 = load %struct.link**, %struct.link*** %50, align 8
  %52 = load %struct.fabric*, %struct.fabric** %2, align 8
  %53 = getelementptr inbounds %struct.fabric, %struct.fabric* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.link*, %struct.link** %51, i64 %54
  %56 = load %struct.fabric*, %struct.fabric** %2, align 8
  %57 = getelementptr inbounds %struct.fabric, %struct.fabric* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.fabric*, %struct.fabric** %2, align 8
  %60 = getelementptr inbounds %struct.fabric, %struct.fabric* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %58, %61
  %63 = mul i64 %62, 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memset(%struct.link** %55, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %40, %1
  %67 = call %struct.link* @calloc(i32 1, i32 4)
  store %struct.link* %67, %struct.link** %4, align 8
  %68 = load %struct.link*, %struct.link** %4, align 8
  %69 = icmp ne %struct.link* %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = load %struct.fabric*, %struct.fabric** %2, align 8
  %72 = getelementptr inbounds %struct.fabric, %struct.fabric* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* @OSM_LOG_ERROR, align 4
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @strerror(i32 %76)
  %78 = call i32 @OSM_LOG(i32* %74, i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %89

79:                                               ; preds = %66
  %80 = load %struct.link*, %struct.link** %4, align 8
  %81 = load %struct.fabric*, %struct.fabric** %2, align 8
  %82 = getelementptr inbounds %struct.fabric, %struct.fabric* %81, i32 0, i32 2
  %83 = load %struct.link**, %struct.link*** %82, align 8
  %84 = load %struct.fabric*, %struct.fabric** %2, align 8
  %85 = getelementptr inbounds %struct.fabric, %struct.fabric* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = getelementptr inbounds %struct.link*, %struct.link** %83, i64 %86
  store %struct.link* %80, %struct.link** %88, align 8
  br label %89

89:                                               ; preds = %79, %70, %31
  %90 = load %struct.link*, %struct.link** %4, align 8
  ret %struct.link* %90
}

declare dso_local i8* @realloc(%struct.link**, i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(%struct.link**, i32, i32) #1

declare dso_local %struct.link* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
