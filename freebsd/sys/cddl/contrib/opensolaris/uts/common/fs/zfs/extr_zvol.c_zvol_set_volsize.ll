; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_set_volsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_set_volsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@B_FALSE = common dso_local global i64 0, align 8
@ZFS_PROP_READONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@zfsdev_state_lock = common dso_local global i32 0, align 4
@DMU_OST_ZVOL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@ZVOL_OBJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zvol_set_volsize(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  %12 = load i64, i64* @B_FALSE, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @ZFS_PROP_READONLY, align 4
  %15 = call i32 @zfs_prop_to_name(i32 %14)
  %16 = call i32 @dsl_prop_get_integer(i8* %13, i32 %15, i64* %10, i32* null)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %103

21:                                               ; preds = %2
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EROFS, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %103

27:                                               ; preds = %21
  %28 = call i32 @mutex_enter(i32* @zfsdev_state_lock)
  %29 = load i8*, i8** %4, align 8
  %30 = call %struct.TYPE_6__* @zvol_minor_lookup(i8* %29)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %6, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = icmp eq %struct.TYPE_6__* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %33, %27
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @DMU_OST_ZVOL, align 4
  %41 = load i64, i64* @B_FALSE, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @dmu_objset_own(i8* %39, i32 %40, i64 %41, i32 %42, i32** %7)
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = call i32 @mutex_exit(i32* @zfsdev_state_lock)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %103

48:                                               ; preds = %38
  %49 = load i64, i64* @B_TRUE, align 8
  store i64 %49, i64* %11, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %61

57:                                               ; preds = %33
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %7, align 8
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @ZVOL_OBJ, align 4
  %64 = call i32 @dmu_object_info(i32* %62, i32 %63, %struct.TYPE_7__* %9)
  store i32 %64, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @zvol_check_volsize(i64 %67, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %61
  br label %87

73:                                               ; preds = %66
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @zvol_update_volsize(i32* %74, i64 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @zvol_update_live_volsize(%struct.TYPE_6__* %83, i64 %84)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %82, %79, %73
  br label %87

87:                                               ; preds = %86, %72
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* @FTAG, align 4
  %93 = call i32 @dmu_objset_disown(i32* %91, i32 %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = icmp ne %struct.TYPE_6__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99, %87
  %101 = call i32 @mutex_exit(i32* @zfsdev_state_lock)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %45, %24, %19
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @dsl_prop_get_integer(i8*, i32, i64*, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_6__* @zvol_minor_lookup(i8*) #1

declare dso_local i32 @dmu_objset_own(i8*, i32, i64, i32, i32**) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dmu_object_info(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @zvol_check_volsize(i64, i32) #1

declare dso_local i32 @zvol_update_volsize(i32*, i64) #1

declare dso_local i32 @zvol_update_live_volsize(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @dmu_objset_disown(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
