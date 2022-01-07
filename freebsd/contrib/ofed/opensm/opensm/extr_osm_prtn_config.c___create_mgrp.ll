; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c___create_mgrp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c___create_mgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.part_conf = type { i32, i32, i32 }
%struct.precreate_mgroup = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.part_conf*, %struct.precreate_mgroup*)* @__create_mgrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__create_mgrp(%struct.part_conf* %0, %struct.precreate_mgroup* %1) #0 {
  %3 = alloca %struct.part_conf*, align 8
  %4 = alloca %struct.precreate_mgroup*, align 8
  %5 = alloca i32, align 4
  store %struct.part_conf* %0, %struct.part_conf** %3, align 8
  store %struct.precreate_mgroup* %1, %struct.precreate_mgroup** %4, align 8
  %6 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %7 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %48, label %11

11:                                               ; preds = %2
  %12 = load %struct.part_conf*, %struct.part_conf** %3, align 8
  %13 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.part_conf*, %struct.part_conf** %3, align 8
  %16 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.part_conf*, %struct.part_conf** %3, align 8
  %19 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %22 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %26 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %30 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %34 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %38 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %42 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %46 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %45, i32 0, i32 0
  %47 = call i32 @osm_prtn_add_mcgroup(i32 %14, i32 %17, i32 %20, i64 %24, i64 %28, i64 %32, i64 0, i32 %36, i32 %40, i32 %44, i32* %46)
  br label %105

48:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %101, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp ult i32 %50, 16
  br i1 %51, label %52, label %104

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = shl i32 1, %53
  %55 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %56 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %54, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %101

62:                                               ; preds = %52
  %63 = load %struct.part_conf*, %struct.part_conf** %3, align 8
  %64 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.part_conf*, %struct.part_conf** %3, align 8
  %67 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.part_conf*, %struct.part_conf** %3, align 8
  %70 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %73 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %77 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %81 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %87 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %91 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %95 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.precreate_mgroup*, %struct.precreate_mgroup** %4, align 8
  %99 = getelementptr inbounds %struct.precreate_mgroup, %struct.precreate_mgroup* %98, i32 0, i32 0
  %100 = call i32 @osm_prtn_add_mcgroup(i32 %65, i32 %68, i32 %71, i64 %75, i64 %79, i64 %83, i64 %85, i32 %89, i32 %93, i32 %97, i32* %99)
  br label %101

101:                                              ; preds = %62, %61
  %102 = load i32, i32* %5, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %49

104:                                              ; preds = %49
  br label %105

105:                                              ; preds = %104, %11
  ret void
}

declare dso_local i32 @osm_prtn_add_mcgroup(i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
