; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_space_map.c_space_map_free_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_space_map.c_space_map_free_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SPA_FEATURE_SPACEMAP_HISTOGRAM = common dso_local global i32 0, align 4
@SPACE_MAP_SIZE_V0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @space_map_free_obj(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @dmu_objset_spa(i32* %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* @SPA_FEATURE_SPACEMAP_HISTOGRAM, align 4
  %13 = call i64 @spa_feature_is_enabled(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dmu_object_info(i32* %16, i32 %17, %struct.TYPE_3__* %8)
  %19 = call i32 @VERIFY0(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SPACE_MAP_SIZE_V0, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @SPA_FEATURE_SPACEMAP_HISTOGRAM, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @spa_feature_decr(i32* %25, i32 %26, i32* %27)
  br label %29

29:                                               ; preds = %24, %15
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @dmu_object_free(i32* %31, i32 %32, i32* %33)
  %35 = call i32 @VERIFY0(i32 %34)
  ret void
}

declare dso_local i32* @dmu_objset_spa(i32*) #1

declare dso_local i64 @spa_feature_is_enabled(i32*, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_object_info(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @spa_feature_decr(i32*, i32, i32*) #1

declare dso_local i32 @dmu_object_free(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
