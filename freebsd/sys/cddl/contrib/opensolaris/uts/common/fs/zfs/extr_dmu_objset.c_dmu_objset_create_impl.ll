; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_create_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_create_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32, i32*, i32, i64 }

@DMU_OT_DNODE = common dso_local global i32 0, align 4
@DNODE_BLOCK_SIZE = common dso_local global i32 0, align 4
@DN_MAX_INDBLKSHIFT = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@DNODE_MIN_SLOTS = common dso_local global i32 0, align 4
@DNODE_SHIFT = common dso_local global i64 0, align 8
@SPA_BLKPTRSHIFT = common dso_local global i32 0, align 4
@DN_MAX_OBJECT = common dso_local global i64 0, align 8
@TXG_MASK = common dso_local global i64 0, align 8
@DMU_OST_NONE = common dso_local global i64 0, align 8
@DMU_OST_ANY = common dso_local global i64 0, align 8
@DMU_OST_NUMTYPES = common dso_local global i64 0, align 8
@OBJSET_FLAG_USERACCOUNTING_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @dmu_objset_create_impl(i32* %0, i32* %1, i32* %2, i64 %3, %struct.TYPE_19__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %10, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %15 = call i32 @dmu_tx_is_syncing(%struct.TYPE_19__* %14)
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @dmu_objset_from_ds(i32* %20, %struct.TYPE_17__** %11)
  %22 = call i32 @VERIFY0(i32 %21)
  br label %28

23:                                               ; preds = %5
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @dmu_objset_open_impl(i32* %24, i32* null, i32* %25, %struct.TYPE_17__** %11)
  %27 = call i32 @VERIFY0(i32 %26)
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %30 = call %struct.TYPE_18__* @DMU_META_DNODE(%struct.TYPE_17__* %29)
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %12, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %32 = load i32, i32* @DMU_OT_DNODE, align 4
  %33 = load i32, i32* @DNODE_BLOCK_SIZE, align 4
  %34 = load i32, i32* @DN_MAX_INDBLKSHIFT, align 4
  %35 = load i32, i32* @DMU_OT_NONE, align 4
  %36 = load i32, i32* @DNODE_MIN_SLOTS, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %38 = call i32 @dnode_allocate(%struct.TYPE_18__* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 0, i32 %36, %struct.TYPE_19__* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %83

41:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  br label %42

42:                                               ; preds = %67, %41
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DNODE_SHIFT, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load i32, i32* %13, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SPA_BLKPTRSHIFT, align 4
  %58 = sub nsw i32 %56, %57
  %59 = mul nsw i32 %53, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %51, %60
  %62 = trunc i64 %61 to i32
  %63 = shl i32 %46, %62
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @DN_MAX_OBJECT, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %42
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %42

70:                                               ; preds = %42
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TXG_MASK, align 8
  %81 = and i64 %79, %80
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  store i32 %71, i32* %82, align 4
  br label %83

83:                                               ; preds = %70, %28
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @DMU_OST_NONE, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @DMU_OST_ANY, align 8
  %91 = icmp ne i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @ASSERT(i32 %92)
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @DMU_OST_NUMTYPES, align 8
  %96 = icmp slt i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  store i64 %99, i64* %103, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %105 = call i64 @dmu_objset_userused_enabled(%struct.TYPE_17__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %83
  %108 = load i32, i32* @OBJSET_FLAG_USERACCOUNTING_COMPLETE, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %108
  store i32 %114, i32* %112, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %107, %83
  %123 = load i32*, i32** %7, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %125 = call i32 @dsl_dataset_dirty(i32* %123, %struct.TYPE_19__* %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  ret %struct.TYPE_17__* %126
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(%struct.TYPE_19__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_objset_from_ds(i32*, %struct.TYPE_17__**) #1

declare dso_local i32 @dmu_objset_open_impl(i32*, i32*, i32*, %struct.TYPE_17__**) #1

declare dso_local %struct.TYPE_18__* @DMU_META_DNODE(%struct.TYPE_17__*) #1

declare dso_local i32 @dnode_allocate(%struct.TYPE_18__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @dmu_objset_userused_enabled(%struct.TYPE_17__*) #1

declare dso_local i32 @dsl_dataset_dirty(i32*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
