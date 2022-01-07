; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_switch_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_switch_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }

@NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_15__*, i32, %struct.TYPE_14__*)* @switch_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @switch_create(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 16
  %21 = add i64 32, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @malloc(i32 %22)
  %24 = bitcast i8* %23 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %10, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %94

28:                                               ; preds = %3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = call i32 @memset(%struct.TYPE_13__* %29, i32 0, i32 32)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %52, %28
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i8*, i8** @NONE, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store i8* %36, i8** %43, align 8
  %44 = load i8*, i8** @NONE, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i8* %44, i8** %51, align 8
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i8* @malloc(i32 %62)
  %64 = bitcast i8* %63 to %struct.TYPE_13__*
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %66, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = icmp ne %struct.TYPE_13__* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %55
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %73 = call i32 @free(%struct.TYPE_13__* %72)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %94

74:                                               ; preds = %55
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = call i64 @osm_mesh_node_create(%struct.TYPE_15__* %81, %struct.TYPE_13__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %74
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = call i32 @free(%struct.TYPE_13__* %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = call i32 @free(%struct.TYPE_13__* %90)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %94

92:                                               ; preds = %74
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %4, align 8
  br label %94

94:                                               ; preds = %92, %85, %71, %27
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %95
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i64 @osm_mesh_node_create(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
