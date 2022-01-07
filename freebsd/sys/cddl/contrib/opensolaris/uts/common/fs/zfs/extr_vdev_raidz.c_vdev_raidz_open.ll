; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, i64, i64, %struct.TYPE_6__** }
%struct.TYPE_5__ = type { i32 }

@VDEV_RAIDZ_MAXPARITY = common dso_local global i32 0, align 4
@VDEV_AUX_BAD_LABEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VDEV_AUX_NO_REPLICAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i32*, i32*)* @vdev_raidz_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_raidz_open(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27, %5
  %35 = load i32, i32* @VDEV_AUX_BAD_LABEL, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %6, align 4
  br label %129

41:                                               ; preds = %27
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = call i32 @vdev_open_children(%struct.TYPE_6__* %42)
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %103, %41
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %106

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 8
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %12, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  br label %103

68:                                               ; preds = %50
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1
  %76 = call i32 @MIN(i32 %71, i64 %75)
  %77 = add nsw i32 %76, 1
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  %86 = call i32 @MIN(i32 %81, i64 %85)
  %87 = add nsw i32 %86, 1
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @MAX(i32 %90, i32 %93)
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @MAX(i32 %97, i32 %100)
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %68, %62
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %44

106:                                              ; preds = %44
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %111, %109
  store i32 %112, i32* %110, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %117, %115
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %106
  %123 = load i32, i32* @VDEV_AUX_NO_REPLICAS, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* %15, align 4
  store i32 %127, i32* %6, align 4
  br label %129

128:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %122, %34
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vdev_open_children(%struct.TYPE_6__*) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
