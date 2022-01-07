; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_next_mgrp_box_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_next_mgrp_box_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@list_item = common dso_local global i32 0, align 4
@map_item = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32**, i32**)* @next_mgrp_box_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @next_mgrp_box_port(%struct.TYPE_8__* %0, i32** %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %9, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32**, i32*** %5, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  br label %16

16:                                               ; preds = %47, %3
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = call i32* @cl_qlist_head(i32* %21)
  store i32* %22, i32** %11, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32*, i32** %11, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = call i32* @cl_qlist_end(i32* %26)
  %28 = icmp eq i32* %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32* null, i32** %11, align 8
  br label %60

30:                                               ; preds = %23
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = load i32, i32* @list_item, align 4
  %34 = call %struct.TYPE_7__* @cl_item_obj(i32* %31, %struct.TYPE_7__* %32, i32 %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %7, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = call i32* @cl_qmap_head(i32* %39)
  store i32* %40, i32** %10, align 8
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32*, i32** %10, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = call i32* @cl_qmap_end(i32* %44)
  %46 = icmp eq i32* %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  store i32* null, i32** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32* @cl_qlist_next(i32* %48)
  store i32* %49, i32** %11, align 8
  br label %16

50:                                               ; preds = %41
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = load i32, i32* @map_item, align 4
  %54 = call %struct.TYPE_7__* @cl_item_obj(i32* %51, %struct.TYPE_7__* %52, i32 %53)
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %8, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32* @cl_qmap_next(i32* %55)
  store i32* %56, i32** %10, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %9, align 8
  br label %60

60:                                               ; preds = %50, %29
  %61 = load i32*, i32** %11, align 8
  %62 = load i32**, i32*** %5, align 8
  store i32* %61, i32** %62, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32**, i32*** %6, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32*, i32** %9, align 8
  ret i32* %65
}

declare dso_local i32* @cl_qlist_head(i32*) #1

declare dso_local i32* @cl_qlist_end(i32*) #1

declare dso_local %struct.TYPE_7__* @cl_item_obj(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32* @cl_qmap_head(i32*) #1

declare dso_local i32* @cl_qmap_end(i32*) #1

declare dso_local i32* @cl_qlist_next(i32*) #1

declare dso_local i32* @cl_qmap_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
