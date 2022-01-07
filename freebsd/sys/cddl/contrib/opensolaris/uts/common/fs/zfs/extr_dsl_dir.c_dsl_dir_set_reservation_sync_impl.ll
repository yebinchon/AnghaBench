; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_set_reservation_sync_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_set_reservation_sync_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@DD_USED_CHILD_RSRV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dir_set_reservation_sync_impl(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @dmu_buf_will_dirty(i32 %11, i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @mutex_enter(i32* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @MAX(i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @MAX(i32 %24, i32 %28)
  %30 = sub nsw i64 %23, %29
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @DD_USED_CHILD_RSRV, align 4
  %44 = load i64, i64* %8, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @dsl_dir_diduse_space(i32* %42, i32 %43, i64 %44, i32 0, i32 0, i32* %45)
  br label %47

47:                                               ; preds = %39, %3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = call i32 @mutex_exit(i32* %49)
  ret void
}

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__*) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @dsl_dir_diduse_space(i32*, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
