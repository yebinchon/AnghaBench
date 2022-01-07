; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_new_part_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_new_part_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.part_conf = type { i32, i32, %struct.TYPE_2__, i64, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@new_part_conf.part = internal global %struct.part_conf zeroinitializer, align 8
@OSM_DEFAULT_SL = common dso_local global i32 0, align 4
@OSM_DEFAULT_MGRP_RATE = common dso_local global i32 0, align 4
@OSM_DEFAULT_MGRP_MTU = common dso_local global i32 0, align 4
@LIMITED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.part_conf* (i32*, i32*)* @new_part_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.part_conf* @new_part_conf(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.part_conf*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.part_conf* @new_part_conf.part, %struct.part_conf** %5, align 8
  %6 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %7 = call i32 @memset(%struct.part_conf* %6, i32 0, i32 56)
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %10 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %9, i32 0, i32 6
  store i32* %8, i32** %10, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %13 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %12, i32 0, i32 5
  store i32* %11, i32** %13, align 8
  %14 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %15 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %17 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @OSM_DEFAULT_SL, align 4
  %19 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %20 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load i32, i32* @OSM_DEFAULT_MGRP_RATE, align 4
  %23 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %24 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @OSM_DEFAULT_MGRP_MTU, align 4
  %27 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %28 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @LIMITED, align 4
  %31 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %32 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  %35 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.part_conf*, %struct.part_conf** %5, align 8
  ret %struct.part_conf* %36
}

declare dso_local i32 @memset(%struct.part_conf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
