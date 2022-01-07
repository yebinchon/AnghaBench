; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_inherit_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_inherit_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64 }

@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@ZPROP_SRC_INHERITED = common dso_local global i32 0, align 4
@ZPROP_INVAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZFS_PROP_VOLSIZE = common dso_local global i64 0, align 8
@ZFS_PROP_VERSION = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @zfs_ioc_inherit_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_inherit_prop(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @zfs_name_to_prop(i8* %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ZPROP_SRC_NONE, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ZPROP_SRC_INHERITED, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 4
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %100

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @ZPROP_INVAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @zfs_prop_user(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %121

41:                                               ; preds = %34
  store i32 128, i32* %10, align 4
  br label %57

42:                                               ; preds = %30
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @ZFS_PROP_VERSION, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = call i32 @SET_ERROR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %121

53:                                               ; preds = %46
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @zfs_prop_get_type(i64 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %59 = load i32, i32* @KM_SLEEP, align 4
  %60 = call i64 @nvlist_alloc(i32** %8, i32 %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @VERIFY(i32 %62)
  %64 = load i32, i32* %10, align 4
  switch i32 %64, label %79 [
    i32 128, label %65
    i32 129, label %72
    i32 130, label %72
  ]

65:                                               ; preds = %57
  %66 = load i32*, i32** %8, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @nvlist_add_string(i32* %66, i8* %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %69 = icmp eq i32 0, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @VERIFY(i32 %70)
  br label %84

72:                                               ; preds = %57, %57
  %73 = load i32*, i32** %8, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @nvlist_add_uint64(i32* %73, i8* %74, i32 0)
  %76 = icmp eq i32 0, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @VERIFY(i32 %77)
  br label %84

79:                                               ; preds = %57
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @nvlist_free(i32* %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = call i32 @SET_ERROR(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %121

84:                                               ; preds = %72, %65
  %85 = load i32*, i32** %8, align 8
  %86 = call i32* @nvlist_next_nvpair(i32* %85, i32* null)
  store i32* %86, i32** %9, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @zfs_prop_set_special(i32 %89, i32 %90, i32* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @nvlist_free(i32* %93)
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %2, align 4
  br label %121

99:                                               ; preds = %84
  br label %112

100:                                              ; preds = %26
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* @ZPROP_INVAL, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @zfs_prop_inheritable(i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @EINVAL, align 4
  %110 = call i32 @SET_ERROR(i32 %109)
  store i32 %110, i32* %2, align 4
  br label %121

111:                                              ; preds = %104, %100
  br label %112

112:                                              ; preds = %111, %99
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @dsl_prop_inherit(i32 %115, i8* %118, i32 %119)
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %112, %108, %97, %79, %50, %38
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i32 @zfs_prop_user(i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_prop_get_type(i64) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @zfs_prop_set_special(i32, i32, i32*) #1

declare dso_local i32 @zfs_prop_inheritable(i64) #1

declare dso_local i32 @dsl_prop_inherit(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
