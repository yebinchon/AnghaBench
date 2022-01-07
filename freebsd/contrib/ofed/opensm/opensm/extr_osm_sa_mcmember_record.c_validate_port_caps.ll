; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_mcmember_record.c_validate_port_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_sa_mcmember_record.c_validate_port_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Port's MTU %x is less than %x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@IB_PORT_CAP_HAS_EXT_SPEEDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Port's RATE %x is less than %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_10__*)* @validate_port_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_port_caps(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = call i64 @ib_port_info_get_neighbor_mtu(%struct.TYPE_12__* %15)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 63
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @OSM_LOG(i32* %27, i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %30)
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %8, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IB_PORT_CAP_HAS_EXT_SPEEDS, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @ib_port_info_compute_rate(%struct.TYPE_12__* %41, i32 %42)
  store i64 %43, i64* %11, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 63
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i64 @ib_path_compare_rates(i64 %50, i64 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %33
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @OSM_LOG(i32* %55, i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %58)
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %33
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %54, %26
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @ib_port_info_get_neighbor_mtu(%struct.TYPE_12__*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i64, i64) #1

declare dso_local i64 @ib_port_info_compute_rate(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ib_path_compare_rates(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
