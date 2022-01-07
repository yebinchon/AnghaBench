; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_transfer_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_transfer_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32* }

@DD_USED_NUM = common dso_local global i64 0, align 8
@DD_FLAG_USED_BREAKDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dir_transfer_space(%struct.TYPE_5__* %0, i32 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = load i32*, i32** %10, align 8
  %15 = call i64 @dmu_tx_is_syncing(i32* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %5
  %18 = phi i1 [ true, %5 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @DD_USED_NUM, align 8
  %23 = icmp ult i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @DD_USED_NUM, align 8
  %28 = icmp ult i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %17
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DD_FLAG_USED_BREAKDOWN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33, %17
  br label %113

42:                                               ; preds = %33
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @dmu_buf_will_dirty(i32 %48, i32* %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @mutex_enter(i32* %53)
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %64, %65
  %67 = zext i1 %66 to i32
  br label %80

68:                                               ; preds = %51
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp sge i32 %75, %77
  %79 = zext i1 %78 to i32
  br label %80

80:                                               ; preds = %68, %57
  %81 = phi i32 [ %67, %57 ], [ %79, %68 ]
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @ABS(i32 %87)
  %89 = icmp sge i64 %86, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, %92
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %103 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %102)
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %9, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, %101
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = call i32 @mutex_exit(i32* %111)
  br label %113

113:                                              ; preds = %80, %41
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dmu_tx_is_syncing(i32*) #1

declare dso_local %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @ABS(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
