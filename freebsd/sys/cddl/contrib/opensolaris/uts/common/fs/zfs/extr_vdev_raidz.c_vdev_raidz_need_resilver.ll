; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_need_resilver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_need_resilver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_6__**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@B_TRUE = common dso_local global i32 0, align 4
@DTL_PARTIAL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64)* @vdev_raidz_need_resilver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_raidz_need_resilver(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %31, 1
  %33 = load i64, i64* %10, align 8
  %34 = lshr i64 %32, %33
  %35 = add i64 %34, 1
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %8, align 8
  %38 = urem i64 %36, %37
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* %8, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @B_TRUE, align 4
  store i32 %45, i32* %4, align 4
  br label %77

46:                                               ; preds = %3
  store i64 0, i64* %14, align 8
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %49, %50
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %47
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %14, align 8
  %56 = add i64 %54, %55
  %57 = load i64, i64* %8, align 8
  %58 = urem i64 %56, %57
  store i64 %58, i64* %15, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %16, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %66 = load i32, i32* @DTL_PARTIAL, align 4
  %67 = call i32 @vdev_dtl_empty(%struct.TYPE_6__* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %53
  %70 = load i32, i32* @B_TRUE, align 4
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %53
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %14, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %14, align 8
  br label %47

75:                                               ; preds = %47
  %76 = load i32, i32* @B_FALSE, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %69, %44
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @vdev_dtl_empty(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
