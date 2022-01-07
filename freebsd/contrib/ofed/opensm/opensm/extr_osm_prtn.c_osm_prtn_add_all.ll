; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_osm_prtn_add_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn.c_osm_prtn_add_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@IB_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @osm_prtn_add_all(i32* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32* %18, i32** %13, align 8
  %19 = load i64, i64* @IB_SUCCESS, align 8
  store i64 %19, i64* %16, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32* @cl_qmap_head(i32* %20)
  store i32* %21, i32** %14, align 8
  br label %22

22:                                               ; preds = %55, %6
  %23 = load i32*, i32** %14, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i32* @cl_qmap_end(i32* %24)
  %26 = icmp ne i32* %23, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = load i32*, i32** %14, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %15, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i32* @cl_qmap_next(i32* %30)
  store i32* %31, i32** %14, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @osm_node_get_type(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %34, %27
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %46 = call i32 @osm_port_get_guid(%struct.TYPE_7__* %45)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @osm_prtn_add_port(i32* %42, %struct.TYPE_6__* %43, i32* %44, i32 %46, i32 %47, i32 %48)
  store i64 %49, i64* %16, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* @IB_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %57

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %34
  br label %22

56:                                               ; preds = %22
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i64, i64* %16, align 8
  ret i64 %58
}

declare dso_local i32* @cl_qmap_head(i32*) #1

declare dso_local i32* @cl_qmap_end(i32*) #1

declare dso_local i32* @cl_qmap_next(i32*) #1

declare dso_local i32 @osm_node_get_type(i32) #1

declare dso_local i64 @osm_prtn_add_port(i32*, %struct.TYPE_6__*, i32*, i32, i32, i32) #1

declare dso_local i32 @osm_port_get_guid(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
