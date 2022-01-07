; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/os/extr_fm.c_fm_fmri_zfs_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/os/extr_fm.c_fm_fmri_zfs_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ZFS_SCHEME_VERSION0 = common dso_local global i32 0, align 4
@erpt_kstat_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@FM_VERSION = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME_ZFS = common dso_local global i32 0, align 4
@FM_FMRI_ZFS_POOL = common dso_local global i32 0, align 4
@FM_FMRI_ZFS_VDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm_fmri_zfs_set(i32* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @ZFS_SCHEME_VERSION0, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %50

14:                                               ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @FM_VERSION, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @nvlist_add_uint8(i32* %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %50

22:                                               ; preds = %14
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @FM_FMRI_SCHEME, align 4
  %25 = load i32, i32* @FM_FMRI_SCHEME_ZFS, align 4
  %26 = call i64 @nvlist_add_string(i32* %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %50

30:                                               ; preds = %22
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @FM_FMRI_ZFS_POOL, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @nvlist_add_uint64(i32* %31, i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @FM_FMRI_ZFS_VDEV, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @nvlist_add_uint64(i32* %42, i32 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %49

49:                                               ; preds = %47, %41
  br label %50

50:                                               ; preds = %12, %20, %28, %49, %38
  ret void
}

declare dso_local i32 @atomic_inc_64(i32*) #1

declare dso_local i64 @nvlist_add_uint8(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
