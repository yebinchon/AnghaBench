; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_root.c_vdev_root_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_root.c_vdev_root_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__, i32, %struct.TYPE_7__**, i32* }
%struct.TYPE_6__ = type { i32 }

@VDEV_AUX_BAD_LABEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPA_LOAD_NONE = common dso_local global i64 0, align 8
@VDEV_AUX_NO_REPLICAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64*, i64*, i64*, i64*)* @vdev_root_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_root_open(%struct.TYPE_7__* %0, i64* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load i32, i32* @VDEV_AUX_BAD_LABEL, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = call i32 @SET_ERROR(i32 %29)
  store i32 %30, i32* %6, align 4
  br label %93

31:                                               ; preds = %5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = call i32 @vdev_open_children(%struct.TYPE_7__* %32)
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %65, %31
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %44, i64 %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %16, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %41
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %58, %53, %41
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %34

68:                                               ; preds = %34
  %69 = load i32*, i32** %12, align 8
  %70 = call i64 @spa_load_state(i32* %69)
  %71 = load i64, i64* @SPA_LOAD_NONE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @spa_set_missing_tvds(i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i64 @too_many_errors(%struct.TYPE_7__* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* @VDEV_AUX_NO_REPLICAS, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %6, align 4
  br label %93

88:                                               ; preds = %77
  %89 = load i64*, i64** %8, align 8
  store i64 0, i64* %89, align 8
  %90 = load i64*, i64** %9, align 8
  store i64 0, i64* %90, align 8
  %91 = load i64*, i64** %10, align 8
  store i64 0, i64* %91, align 8
  %92 = load i64*, i64** %11, align 8
  store i64 0, i64* %92, align 8
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %88, %82, %24
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vdev_open_children(%struct.TYPE_7__*) #1

declare dso_local i64 @spa_load_state(i32*) #1

declare dso_local i32 @spa_set_missing_tvds(i32*, i32) #1

declare dso_local i64 @too_many_errors(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
