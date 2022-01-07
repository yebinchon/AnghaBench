; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dir.c_dsl_dir_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@ZFS_PROP_QUOTA = common dso_local global i32 0, align 4
@ZFS_PROP_RESERVATION = common dso_local global i32 0, align 4
@ZFS_PROP_LOGICALUSED = common dso_local global i32 0, align 4
@DD_FLAG_USED_BREAKDOWN = common dso_local global i32 0, align 4
@ZFS_PROP_USEDSNAP = common dso_local global i32 0, align 4
@ZFS_PROP_USEDDS = common dso_local global i32 0, align 4
@ZFS_PROP_USEDREFRESERV = common dso_local global i32 0, align 4
@ZFS_PROP_USEDCHILD = common dso_local global i32 0, align 4
@ZFS_PROP_FILESYSTEM_COUNT = common dso_local global i32 0, align 4
@ZFS_PROP_SNAPSHOT_COUNT = common dso_local global i32 0, align 4
@ZFS_PROP_REMAPTXG = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_PROP_ORIGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dir_stats(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = call i32 @mutex_enter(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* @ZFS_PROP_QUOTA, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = call i32 @dsl_dir_get_quota(%struct.TYPE_17__* %13)
  %15 = call i32 @dsl_prop_nvlist_add_uint64(i32* %11, i32 %12, i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @ZFS_PROP_RESERVATION, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = call i32 @dsl_dir_get_reservation(%struct.TYPE_17__* %18)
  %20 = call i32 @dsl_prop_nvlist_add_uint64(i32* %16, i32 %17, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @ZFS_PROP_LOGICALUSED, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = call i32 @dsl_dir_get_logicalused(%struct.TYPE_17__* %23)
  %25 = call i32 @dsl_prop_nvlist_add_uint64(i32* %21, i32 %22, i32 %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = call %struct.TYPE_18__* @dsl_dir_phys(%struct.TYPE_17__* %26)
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DD_FLAG_USED_BREAKDOWN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @ZFS_PROP_USEDSNAP, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = call i32 @dsl_dir_get_usedsnap(%struct.TYPE_17__* %36)
  %38 = call i32 @dsl_prop_nvlist_add_uint64(i32* %34, i32 %35, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @ZFS_PROP_USEDDS, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = call i32 @dsl_dir_get_usedds(%struct.TYPE_17__* %41)
  %43 = call i32 @dsl_prop_nvlist_add_uint64(i32* %39, i32 %40, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @ZFS_PROP_USEDREFRESERV, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = call i32 @dsl_dir_get_usedrefreserv(%struct.TYPE_17__* %46)
  %48 = call i32 @dsl_prop_nvlist_add_uint64(i32* %44, i32 %45, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @ZFS_PROP_USEDCHILD, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = call i32 @dsl_dir_get_usedchild(%struct.TYPE_17__* %51)
  %53 = call i32 @dsl_prop_nvlist_add_uint64(i32* %49, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %33, %2
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = call i32 @mutex_exit(i32* %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = call i64 @dsl_dir_get_filesystem_count(%struct.TYPE_17__* %58, i32* %5)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @ZFS_PROP_FILESYSTEM_COUNT, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @dsl_prop_nvlist_add_uint64(i32* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %54
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = call i64 @dsl_dir_get_snapshot_count(%struct.TYPE_17__* %67, i32* %5)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @ZFS_PROP_SNAPSHOT_COUNT, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @dsl_prop_nvlist_add_uint64(i32* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = call i64 @dsl_dir_get_remaptxg(%struct.TYPE_17__* %76, i32* %5)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @ZFS_PROP_REMAPTXG, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @dsl_prop_nvlist_add_uint64(i32* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %75
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = call i64 @dsl_dir_is_clone(%struct.TYPE_17__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %90 = zext i32 %89 to i64
  %91 = call i8* @llvm.stacksave()
  store i8* %91, i8** %6, align 8
  %92 = alloca i8, i64 %90, align 16
  store i64 %90, i64* %7, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = call i32 @dsl_dir_get_origin(%struct.TYPE_17__* %93, i8* %92)
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* @ZFS_PROP_ORIGIN, align 4
  %97 = call i32 @dsl_prop_nvlist_add_string(i32* %95, i32 %96, i8* %92)
  %98 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %99

99:                                               ; preds = %88, %84
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dsl_prop_nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @dsl_dir_get_quota(%struct.TYPE_17__*) #1

declare dso_local i32 @dsl_dir_get_reservation(%struct.TYPE_17__*) #1

declare dso_local i32 @dsl_dir_get_logicalused(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @dsl_dir_phys(%struct.TYPE_17__*) #1

declare dso_local i32 @dsl_dir_get_usedsnap(%struct.TYPE_17__*) #1

declare dso_local i32 @dsl_dir_get_usedds(%struct.TYPE_17__*) #1

declare dso_local i32 @dsl_dir_get_usedrefreserv(%struct.TYPE_17__*) #1

declare dso_local i32 @dsl_dir_get_usedchild(%struct.TYPE_17__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @dsl_dir_get_filesystem_count(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @dsl_dir_get_snapshot_count(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @dsl_dir_get_remaptxg(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @dsl_dir_is_clone(%struct.TYPE_17__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dsl_dir_get_origin(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @dsl_prop_nvlist_add_string(i32*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
