; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_prtn_make_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_prtn_make_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@IB_UNKNOWN_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@IB_DEFAULT_PARTIAL_PKEY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IB_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@OSM_DEFAULT_MGRP_RATE = common dso_local global i32 0, align 4
@OSM_DEFAULT_MGRP_MTU = common dso_local global i32 0, align 4
@OSM_DEFAULT_SL = common dso_local global i32 0, align 4
@OSM_IPOIB_BROADCAST_MGRP_QKEY = common dso_local global i32 0, align 4
@osm_ipoib_broadcast_mgid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_12__*, i32)* @prtn_make_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prtn_make_default(i32* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @IB_UNKNOWN_ERROR, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = load i32, i32* @IB_DEFAULT_PARTIAL_PKEY, align 4
  %13 = call %struct.TYPE_13__* @osm_prtn_make_new(i32* %10, %struct.TYPE_12__* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %56

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i64 @osm_prtn_add_all(i32* %18, %struct.TYPE_12__* %19, %struct.TYPE_13__* %20, i32 0, i32 %21, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @IB_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %56

28:                                               ; preds = %17
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cl_map_remove(i32* %30, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i64 @osm_prtn_add_port(i32* %35, %struct.TYPE_12__* %36, %struct.TYPE_13__* %37, i32 %40, i32 %41, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %28
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = load i32, i32* @OSM_DEFAULT_MGRP_RATE, align 4
  %51 = load i32, i32* @OSM_DEFAULT_MGRP_MTU, align 4
  %52 = load i32, i32* @OSM_DEFAULT_SL, align 4
  %53 = load i32, i32* @OSM_IPOIB_BROADCAST_MGRP_QKEY, align 4
  %54 = call i32 @osm_prtn_add_mcgroup(i32* %47, %struct.TYPE_12__* %48, %struct.TYPE_13__* %49, i32 %50, i32 %51, i32 %52, i32 0, i32 %53, i32 0, i32 0, i32* @osm_ipoib_broadcast_mgid)
  br label %55

55:                                               ; preds = %46, %28
  br label %56

56:                                               ; preds = %55, %27, %16
  %57 = load i64, i64* %7, align 8
  ret i64 %57
}

declare dso_local %struct.TYPE_13__* @osm_prtn_make_new(i32*, %struct.TYPE_12__*, i8*, i32) #1

declare dso_local i64 @osm_prtn_add_all(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @cl_map_remove(i32*, i32) #1

declare dso_local i64 @osm_prtn_add_port(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @osm_prtn_add_mcgroup(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
