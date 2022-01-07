; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfeature.c_feature_get_refcount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfeature.c_feature_get_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64 }

@SPA_FEATURE_DISABLED = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @feature_get_refcount(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @VALID_FEATURE_FID(i64 %10)
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SPA_FEATURE_DISABLED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOTSUP, align 4
  %25 = call i32 @SET_ERROR(i32 %24)
  store i32 %25, i32* %4, align 4
  br label %36

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %26, %23
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VALID_FEATURE_FID(i64) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
