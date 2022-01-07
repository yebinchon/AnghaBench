; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_track_mgrp_w_partition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_track_mgrp_w_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@IB_SUCCESS = common dso_local global i32 0, align 4
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"realloc error to create MC group (%s) in partition (pkey 0x%04x)\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IB_ERROR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*, %struct.TYPE_12__*, i32)* @track_mgrp_w_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @track_mgrp_w_partition(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i32* %3, %struct.TYPE_12__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_11__**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %17, align 4
  br label %23

23:                                               ; preds = %42, %6
  %24 = load i32, i32* %17, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %31, align 8
  %33 = load i32, i32* %17, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %32, i64 %34
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = icmp eq %struct.TYPE_11__* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @IB_SUCCESS, align 4
  store i32 %40, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %100

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %17, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = call %struct.TYPE_11__** @realloc(%struct.TYPE_11__** %48, i32 %55)
  store %struct.TYPE_11__** %56, %struct.TYPE_11__*** %16, align 8
  %57 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %58 = icmp ne %struct.TYPE_11__** %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %45
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store %struct.TYPE_11__** %60, %struct.TYPE_11__*** %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %66, i64 %70
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %95

76:                                               ; preds = %45
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* @OSM_LOG_ERROR, align 4
  %79 = load i32, i32* @AF_INET6, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = trunc i64 %20 to i32
  %84 = call i32 @inet_ntop(i32 %79, i32 %82, i8* %22, i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @cl_ntoh16(i32 %85)
  %87 = call i32 @OSM_LOG(i32* %77, i32 %78, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %86)
  %88 = load i32, i32* @FALSE, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %93 = call i32 @osm_mgrp_cleanup(i32* %91, %struct.TYPE_11__* %92)
  %94 = load i32, i32* @IB_ERROR, align 4
  store i32 %94, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %100

95:                                               ; preds = %59
  %96 = load i32, i32* @TRUE, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @IB_SUCCESS, align 4
  store i32 %99, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %100

100:                                              ; preds = %95, %76, %39
  %101 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_11__** @realloc(%struct.TYPE_11__**, i32) #2

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @inet_ntop(i32, i32, i8*, i32) #2

declare dso_local i32 @cl_ntoh16(i32) #2

declare dso_local i32 @osm_mgrp_cleanup(i32*, %struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
