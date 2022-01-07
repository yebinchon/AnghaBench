; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_class_throttle_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_class_throttle_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_ALLOCATING = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metaslab_class_throttle_reserve(%struct.TYPE_7__* %0, i32 %1, i32 %2, %struct.TYPE_6__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %16 = load i32, i32* @B_FALSE, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = call i32 @mutex_enter(i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i64 @zfs_refcount_count(i32* %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %5
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %41, %5
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %11, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @GANG_ALLOCATION(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %50, %45
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = call i64 @zfs_refcount_add(i32* %65, %struct.TYPE_6__* %66)
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %55

71:                                               ; preds = %55
  %72 = load i32, i32* @ZIO_FLAG_IO_ALLOCATING, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @B_TRUE, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %71, %50
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = call i32 @mutex_exit(i32* %80)
  %82 = load i32, i32* %12, align 4
  ret i32 %82
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @zfs_refcount_count(i32*) #1

declare dso_local i64 @GANG_ALLOCATION(i32) #1

declare dso_local i64 @zfs_refcount_add(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
