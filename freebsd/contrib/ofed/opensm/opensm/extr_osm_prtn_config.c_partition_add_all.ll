; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_partition_add_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_partition_add_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.part_conf = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@LIMITED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@IB_SUCCESS = common dso_local global i64 0, align 8
@BOTH = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.part_conf*, i32*, i32, i64)* @partition_add_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_add_all(%struct.part_conf* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.part_conf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.part_conf* %0, %struct.part_conf** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load %struct.part_conf*, %struct.part_conf** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @manage_membership_change(%struct.part_conf* %10, i32* %11, i32 %12, i64 %13, i32 0)
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @LIMITED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %4
  %19 = load %struct.part_conf*, %struct.part_conf** %6, align 8
  %20 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.part_conf*, %struct.part_conf** %6, align 8
  %23 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @TRUE, align 4
  %28 = load %struct.part_conf*, %struct.part_conf** %6, align 8
  %29 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @osm_prtn_add_all(i32 %21, %struct.TYPE_4__* %24, i32* %25, i32 %26, i32 %27, i32 %30)
  %32 = load i64, i64* @IB_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %69

35:                                               ; preds = %18, %4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @LIMITED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @BOTH, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %39
  %44 = load %struct.part_conf*, %struct.part_conf** %6, align 8
  %45 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %43, %35
  %52 = load %struct.part_conf*, %struct.part_conf** %6, align 8
  %53 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.part_conf*, %struct.part_conf** %6, align 8
  %56 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = load %struct.part_conf*, %struct.part_conf** %6, align 8
  %62 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @osm_prtn_add_all(i32 %54, %struct.TYPE_4__* %57, i32* %58, i32 %59, i32 %60, i32 %63)
  %65 = load i64, i64* @IB_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %69

68:                                               ; preds = %51, %43, %39
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %67, %34
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @manage_membership_change(%struct.part_conf*, i32*, i32, i64, i32) #1

declare dso_local i64 @osm_prtn_add_all(i32, %struct.TYPE_4__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
