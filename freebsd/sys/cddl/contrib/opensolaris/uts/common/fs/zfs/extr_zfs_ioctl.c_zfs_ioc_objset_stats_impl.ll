; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_objset_stats_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_objset_stats_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DMU_OST_ZVOL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @zfs_ioc_objset_stats_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_objset_stats_impl(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = call i32 @dmu_objset_fast_stat(i32* %8, %struct.TYPE_6__* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @dsl_prop_get_all(i32* %17, i32** %7)
  store i32 %18, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @dmu_objset_stats(i32* %21, i32* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @dmu_objset_type(i32* %30)
  %32 = load i64, i64* @DMU_OST_ZVOL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @zvol_get_stats(i32* %35, i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @EIO, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %54

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @VERIFY0(i32 %44)
  br label %46

46:                                               ; preds = %43, %29, %20
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @put_nvlist(%struct.TYPE_5__* %47, i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @nvlist_free(i32* %50)
  br label %52

52:                                               ; preds = %46, %16, %2
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %41
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @dmu_objset_fast_stat(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @dsl_prop_get_all(i32*, i32**) #1

declare dso_local i32 @dmu_objset_stats(i32*, i32*) #1

declare dso_local i64 @dmu_objset_type(i32*) #1

declare dso_local i32 @zvol_get_stats(i32*, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @put_nvlist(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
