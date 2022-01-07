; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_object.c_dmu_object_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_object.c_dmu_object_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.dsl_dataset* }
%struct.dsl_dataset = type { i64* }
%struct.TYPE_8__ = type { i32 }

@SPA_FEATURE_LARGE_DNODE = common dso_local global i64 0, align 8
@DNODES_PER_BLOCK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@DNODE_SHIFT = common dso_local global i32 0, align 4
@DNODE_FIND_HOLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_object_next(%struct.TYPE_7__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsl_dataset*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.dsl_dataset*, %struct.dsl_dataset** %18, align 8
  store %struct.dsl_dataset* %19, %struct.dsl_dataset** %12, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %101

24:                                               ; preds = %4
  %25 = load %struct.dsl_dataset*, %struct.dsl_dataset** %12, align 8
  %26 = icmp ne %struct.dsl_dataset* %25, null
  br i1 %26, label %27, label %96

27:                                               ; preds = %24
  %28 = load %struct.dsl_dataset*, %struct.dsl_dataset** %12, align 8
  %29 = getelementptr inbounds %struct.dsl_dataset, %struct.dsl_dataset* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @SPA_FEATURE_LARGE_DNODE, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %27
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %14, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DNODES_PER_BLOCK, align 4
  %42 = sub nsw i32 %41, 1
  %43 = or i32 %40, %42
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %93, %35
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %44
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @dmu_object_info(%struct.TYPE_7__* %49, i32 %50, %struct.TYPE_8__* %16)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @ENOENT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %5, align 4
  br label %122

61:                                               ; preds = %55
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %61
  br label %93

65:                                               ; preds = %48
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @EEXIST, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %92

72:                                               ; preds = %65
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DNODE_SHIFT, align 4
  %82 = ashr i32 %80, %81
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %14, align 4
  br label %88

85:                                               ; preds = %75
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  store i32 0, i32* %5, align 4
  br label %122

88:                                               ; preds = %78
  br label %91

89:                                               ; preds = %72
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %5, align 4
  br label %122

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91, %69
  br label %93

93:                                               ; preds = %92, %64
  br label %44

94:                                               ; preds = %44
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %11, align 4
  br label %100

96:                                               ; preds = %27, %24
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %96, %94
  br label %101

101:                                              ; preds = %100, %23
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @DNODE_SHIFT, align 4
  %104 = shl i32 %102, %103
  store i32 %104, i32* %10, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = call i32 @DMU_META_DNODE(%struct.TYPE_7__* %105)
  %107 = load i64, i64* %8, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @DNODE_FIND_HOLE, align 4
  br label %112

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  %114 = load i32, i32* @DNODES_PER_BLOCK, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @dnode_next_offset(i32 %106, i32 %113, i32* %10, i32 0, i32 %114, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @DNODE_SHIFT, align 4
  %119 = ashr i32 %117, %118
  %120 = load i32*, i32** %7, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %112, %89, %85, %58
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @dmu_object_info(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @dnode_next_offset(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @DMU_META_DNODE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
