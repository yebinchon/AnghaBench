; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_generate_routing_func_for_mst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_generate_routing_func_for_mst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i32*, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__* }

@NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_10__**)* @generate_routing_func_for_mst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_routing_func_for_mst(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %18, i64 %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %10, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %14, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %89, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %26
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @generate_routing_func_for_mst(%struct.TYPE_11__* %38, i32 %39, %struct.TYPE_10__** %12)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %109

43:                                               ; preds = %30
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %13, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %15, align 8
  br label %46

46:                                               ; preds = %73, %43
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %78

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NONE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %49
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @get_phys_connection(%struct.TYPE_9__* %62, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i64 %64, i64* %72, align 8
  br label %73

73:                                               ; preds = %61, %49
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %15, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %13, align 8
  br label %46

78:                                               ; preds = %46
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = icmp eq %struct.TYPE_10__* %81, null
  %83 = zext i1 %82 to i32
  %84 = call i32 @CL_ASSERT(i32 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %87, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %14, align 8
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %26

92:                                               ; preds = %26
  %93 = call i64 @malloc(i32 16)
  %94 = inttoptr i64 %93 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %13, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %96 = icmp ne %struct.TYPE_10__* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  store i32 -1, i32* %4, align 4
  br label %109

98:                                               ; preds = %92
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %106, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %108 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %107, %struct.TYPE_10__** %108, align 8
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %98, %97, %42
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @get_phys_connection(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @CL_ASSERT(i32) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
