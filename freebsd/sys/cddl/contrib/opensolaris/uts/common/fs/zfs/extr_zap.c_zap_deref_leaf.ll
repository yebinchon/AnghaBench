; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap.c_zap_deref_leaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap.c_zap_deref_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }

@ZBT_LEAF = common dso_local global i64 0, align 8
@ZBT_HEADER = common dso_local global i64 0, align 8
@ZAP_MAGIC = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64, i32*, i32, i32**)* @zap_deref_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zap_deref_leaf(%struct.TYPE_14__* %0, i64 %1, i32* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = icmp eq %struct.TYPE_11__* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = call %struct.TYPE_16__* @zap_f_phys(%struct.TYPE_14__* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = icmp eq %struct.TYPE_16__* %21, %26
  br label %28

28:                                               ; preds = %19, %5
  %29 = phi i1 [ true, %5 ], [ %27, %19 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = call %struct.TYPE_16__* @zap_f_phys(%struct.TYPE_14__* %32)
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ZBT_LEAF, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = call %struct.TYPE_16__* @zap_f_phys(%struct.TYPE_14__* %39)
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ZBT_HEADER, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %38, %28
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = call %struct.TYPE_16__* @zap_f_phys(%struct.TYPE_14__* %46)
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZAP_MAGIC, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45, %38
  %53 = load i32, i32* @EIO, align 4
  %54 = call i32 @SET_ERROR(i32 %53)
  store i32 %54, i32* %6, align 4
  br label %100

55:                                               ; preds = %45
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = call %struct.TYPE_16__* @zap_f_phys(%struct.TYPE_14__* %57)
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @ZAP_HASH_IDX(i64 %56, i32 %61)
  store i64 %62, i64* %13, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @zap_idx_to_blk(%struct.TYPE_14__* %63, i64 %64, i64* %12)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %6, align 4
  br label %100

70:                                               ; preds = %55
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32**, i32*** %11, align 8
  %76 = call i32 @zap_get_leaf_byblk(%struct.TYPE_14__* %71, i64 %72, i32* %73, i32 %74, i32** %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %70
  %80 = load i64, i64* %8, align 8
  %81 = load i32**, i32*** %11, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call %struct.TYPE_15__* @zap_leaf_phys(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @ZAP_HASH_IDX(i64 %80, i32 %86)
  %88 = load i32**, i32*** %11, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = call %struct.TYPE_15__* @zap_leaf_phys(i32* %89)
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %87, %93
  br label %95

95:                                               ; preds = %79, %70
  %96 = phi i1 [ true, %70 ], [ %94, %79 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %95, %68, %52
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_16__* @zap_f_phys(%struct.TYPE_14__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @ZAP_HASH_IDX(i64, i32) #1

declare dso_local i32 @zap_idx_to_blk(%struct.TYPE_14__*, i64, i64*) #1

declare dso_local i32 @zap_get_leaf_byblk(%struct.TYPE_14__*, i64, i32*, i32, i32**) #1

declare dso_local %struct.TYPE_15__* @zap_leaf_phys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
