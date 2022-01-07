; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_manage_membership_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_manage_membership_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.part_conf = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@BOTH = common dso_local global i64 0, align 8
@LIMITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.part_conf*, %struct.TYPE_8__*, i32, i64, i32)* @manage_membership_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @manage_membership_change(%struct.part_conf* %0, %struct.TYPE_8__* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.part_conf*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.part_conf* %0, %struct.part_conf** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.part_conf*, %struct.part_conf** %6, align 8
  %16 = getelementptr inbounds %struct.part_conf, %struct.part_conf* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @BOTH, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %5
  br label %96

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %95 [
    i32 0, label %29
    i32 255, label %42
    i32 130, label %57
    i32 128, label %57
    i32 129, label %57
  ]

29:                                               ; preds = %27
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @LIMITED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  br label %39

36:                                               ; preds = %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32* [ %35, %33 ], [ %38, %36 ]
  %41 = call i32 @cl_map_remove_all(i32* %40)
  br label %96

42:                                               ; preds = %27
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @LIMITED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  br label %52

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32* [ %48, %46 ], [ %51, %49 ]
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @cl_hton64(i32 %54)
  %56 = call i32 @cl_map_remove(i32* %53, i32 %55)
  br label %96

57:                                               ; preds = %27, %27, %27
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @LIMITED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  br label %67

64:                                               ; preds = %57
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i32* [ %63, %61 ], [ %66, %64 ]
  store i32* %68, i32** %11, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @cl_map_head(i32* %69)
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %93, %67
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @cl_map_end(i32* %73)
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @cl_map_next(i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i64 @cl_map_obj(i32 %80)
  %82 = inttoptr i64 %81 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %14, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @osm_node_get_type(i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @cl_map_remove_item(i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %76
  br label %71

94:                                               ; preds = %71
  br label %96

95:                                               ; preds = %27
  br label %96

96:                                               ; preds = %26, %95, %94, %52, %39
  ret void
}

declare dso_local i32 @cl_map_remove_all(i32*) #1

declare dso_local i32 @cl_map_remove(i32*, i32) #1

declare dso_local i32 @cl_hton64(i32) #1

declare dso_local i32 @cl_map_head(i32*) #1

declare dso_local i32 @cl_map_end(i32*) #1

declare dso_local i32 @cl_map_next(i32) #1

declare dso_local i64 @cl_map_obj(i32) #1

declare dso_local i32 @osm_node_get_type(i32) #1

declare dso_local i32 @cl_map_remove_item(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
