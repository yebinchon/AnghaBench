; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_mgr.c_find_and_add_remote_sys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_mgr.c_find_and_add_remote_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osm_remote_node = type { i64, i64, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.osm_remote_guids_count = type { i32, %struct.osm_remote_node* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.osm_remote_node* (%struct.TYPE_6__*, i64, i32, %struct.osm_remote_guids_count*)* @find_and_add_remote_sys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.osm_remote_node* @find_and_add_remote_sys(%struct.TYPE_6__* %0, i64 %1, i32 %2, %struct.osm_remote_guids_count* %3) #0 {
  %5 = alloca %struct.osm_remote_node*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.osm_remote_guids_count*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.osm_remote_guids_count* %3, %struct.osm_remote_guids_count** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.TYPE_7__* @osm_node_get_physp_ptr(i32 %16, i64 %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %11, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i64 @osm_physp_get_port_num(%struct.TYPE_8__* %26)
  store i64 %27, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %68, %4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.osm_remote_guids_count*, %struct.osm_remote_guids_count** %9, align 8
  %31 = getelementptr inbounds %struct.osm_remote_guids_count, %struct.osm_remote_guids_count* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %28
  %35 = load %struct.osm_remote_guids_count*, %struct.osm_remote_guids_count** %9, align 8
  %36 = getelementptr inbounds %struct.osm_remote_guids_count, %struct.osm_remote_guids_count* %35, i32 0, i32 1
  %37 = load %struct.osm_remote_node*, %struct.osm_remote_node** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %37, i64 %39
  %41 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = icmp eq i32* %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.osm_remote_guids_count*, %struct.osm_remote_guids_count** %9, align 8
  %50 = getelementptr inbounds %struct.osm_remote_guids_count, %struct.osm_remote_guids_count* %49, i32 0, i32 1
  %51 = load %struct.osm_remote_node*, %struct.osm_remote_node** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %51, i64 %53
  %55 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %48, %45
  %60 = load %struct.osm_remote_guids_count*, %struct.osm_remote_guids_count** %9, align 8
  %61 = getelementptr inbounds %struct.osm_remote_guids_count, %struct.osm_remote_guids_count* %60, i32 0, i32 1
  %62 = load %struct.osm_remote_node*, %struct.osm_remote_node** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %62, i64 %64
  store %struct.osm_remote_node* %65, %struct.osm_remote_node** %5, align 8
  br label %105

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %34
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %28

71:                                               ; preds = %28
  %72 = load i32*, i32** %12, align 8
  %73 = load %struct.osm_remote_guids_count*, %struct.osm_remote_guids_count** %9, align 8
  %74 = getelementptr inbounds %struct.osm_remote_guids_count, %struct.osm_remote_guids_count* %73, i32 0, i32 1
  %75 = load %struct.osm_remote_node*, %struct.osm_remote_node** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %75, i64 %77
  %79 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %78, i32 0, i32 2
  store i32* %72, i32** %79, align 8
  %80 = load %struct.osm_remote_guids_count*, %struct.osm_remote_guids_count** %9, align 8
  %81 = getelementptr inbounds %struct.osm_remote_guids_count, %struct.osm_remote_guids_count* %80, i32 0, i32 1
  %82 = load %struct.osm_remote_node*, %struct.osm_remote_node** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %82, i64 %84
  %86 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.osm_remote_guids_count*, %struct.osm_remote_guids_count** %9, align 8
  %89 = getelementptr inbounds %struct.osm_remote_guids_count, %struct.osm_remote_guids_count* %88, i32 0, i32 1
  %90 = load %struct.osm_remote_node*, %struct.osm_remote_node** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %90, i64 %92
  %94 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %93, i32 0, i32 0
  store i64 %87, i64* %94, align 8
  %95 = load %struct.osm_remote_guids_count*, %struct.osm_remote_guids_count** %9, align 8
  %96 = getelementptr inbounds %struct.osm_remote_guids_count, %struct.osm_remote_guids_count* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.osm_remote_guids_count*, %struct.osm_remote_guids_count** %9, align 8
  %100 = getelementptr inbounds %struct.osm_remote_guids_count, %struct.osm_remote_guids_count* %99, i32 0, i32 1
  %101 = load %struct.osm_remote_node*, %struct.osm_remote_node** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.osm_remote_node, %struct.osm_remote_node* %101, i64 %103
  store %struct.osm_remote_node* %104, %struct.osm_remote_node** %5, align 8
  br label %105

105:                                              ; preds = %71, %59
  %106 = load %struct.osm_remote_node*, %struct.osm_remote_node** %5, align 8
  ret %struct.osm_remote_node* %106
}

declare dso_local %struct.TYPE_7__* @osm_node_get_physp_ptr(i32, i64) #1

declare dso_local i64 @osm_physp_get_port_num(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
