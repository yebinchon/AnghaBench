; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_find_valid_metaslab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_find_valid_metaslab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i64, i32, i32, i64 }

@AVL_AFTER = common dso_local global i32 0, align 4
@TRACE_TOO_SMALL = common dso_local global i32 0, align 4
@METASLAB_WEIGHT_PRIMARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*, i64, i32*, i32, i64, i64, i32, i32*, %struct.TYPE_15__*, i32*)* @find_valid_metaslab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @find_valid_metaslab(%struct.TYPE_16__* %0, i64 %1, i32* %2, i32 %3, i64 %4, i64 %5, i32 %6, i32* %7, %struct.TYPE_15__* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %19, align 8
  store i32* %9, i32** %20, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i32* %27, i32** %22, align 8
  %28 = load i32*, i32** %22, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %30 = call %struct.TYPE_15__* @avl_find(i32* %28, %struct.TYPE_15__* %29, i32* %21)
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %23, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %32 = icmp eq %struct.TYPE_15__* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %10
  %34 = load i32*, i32** %22, align 8
  %35 = load i32, i32* %21, align 4
  %36 = load i32, i32* @AVL_AFTER, align 4
  %37 = call %struct.TYPE_15__* @avl_nearest(i32* %34, i32 %35, i32 %36)
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %23, align 8
  br label %38

38:                                               ; preds = %33, %10
  br label %39

39:                                               ; preds = %120, %38
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %41 = icmp ne %struct.TYPE_15__* %40, null
  br i1 %41, label %42, label %124

42:                                               ; preds = %39
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %44 = load i64, i64* %16, align 8
  %45 = call i32 @metaslab_should_allocate(%struct.TYPE_15__* %43, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %18, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @TRACE_TOO_SMALL, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @metaslab_trace_add(i32* %48, %struct.TYPE_16__* %49, %struct.TYPE_15__* %50, i64 %51, i32 %52, i32 %53, i32 %54)
  br label %120

56:                                               ; preds = %42
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %56
  br label %120

67:                                               ; preds = %61
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, -1
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %20, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @METASLAB_WEIGHT_PRIMARY, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %67
  %78 = load i32*, i32** %20, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %67
  br label %124

82:                                               ; preds = %77
  %83 = load i64, i64* %15, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @space_map_allocated(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %93

90:                                               ; preds = %82
  %91 = load i64, i64* %15, align 8
  %92 = ashr i64 %91, 1
  br label %93

93:                                               ; preds = %90, %89
  %94 = phi i64 [ 0, %89 ], [ %92, %90 ]
  %95 = add nsw i64 %83, %94
  store i64 %95, i64* %25, align 8
  store i32 0, i32* %24, align 4
  br label %96

96:                                               ; preds = %111, %93
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %24, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = call i64 @metaslab_distance(%struct.TYPE_15__* %101, i32* %105)
  %107 = load i64, i64* %25, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %114

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %24, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %24, align 4
  br label %96

114:                                              ; preds = %109, %96
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %124

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119, %66, %47
  %121 = load i32*, i32** %22, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %123 = call %struct.TYPE_15__* @AVL_NEXT(i32* %121, %struct.TYPE_15__* %122)
  store %struct.TYPE_15__* %123, %struct.TYPE_15__** %23, align 8
  br label %39

124:                                              ; preds = %118, %81, %39
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %126 = icmp ne %struct.TYPE_15__* %125, null
  br i1 %126, label %127, label %149

127:                                              ; preds = %124
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 3
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %127, %124
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  ret %struct.TYPE_15__* %150
}

declare dso_local %struct.TYPE_15__* @avl_find(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_15__* @avl_nearest(i32*, i32, i32) #1

declare dso_local i32 @metaslab_should_allocate(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @metaslab_trace_add(i32*, %struct.TYPE_16__*, %struct.TYPE_15__*, i64, i32, i32, i32) #1

declare dso_local i64 @space_map_allocated(i32) #1

declare dso_local i64 @metaslab_distance(%struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_15__* @AVL_NEXT(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
