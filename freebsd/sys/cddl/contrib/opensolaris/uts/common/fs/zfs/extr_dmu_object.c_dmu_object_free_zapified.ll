; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_object.c_dmu_object_free_zapified.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_object.c_dmu_object_free_zapified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@DMU_OTN_ZAP_METADATA = common dso_local global i64 0, align 8
@SPA_FEATURE_EXTENSIBLE_DATASET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_object_free_zapified(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @dmu_tx_is_syncing(i32* %9)
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @FTAG, align 4
  %15 = call i32 @dnode_hold(i32* %12, i32 %13, i32 %14, %struct.TYPE_4__** %7)
  %16 = call i32 @VERIFY0(i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = load i32, i32* @FTAG, align 4
  %22 = call i32 @dnode_rele(%struct.TYPE_4__* %20, i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @DMU_OTN_ZAP_METADATA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @dmu_objset_spa(i32* %27)
  %29 = load i32, i32* @SPA_FEATURE_EXTENSIBLE_DATASET, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @spa_feature_decr(i32 %28, i32 %29, i32* %30)
  br label %32

32:                                               ; preds = %26, %3
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @dmu_object_free(i32* %33, i32 %34, i32* %35)
  %37 = call i32 @VERIFY0(i32 %36)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dnode_hold(i32*, i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @dnode_rele(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spa_feature_decr(i32, i32, i32*) #1

declare dso_local i32 @dmu_objset_spa(i32*) #1

declare dso_local i32 @dmu_object_free(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
