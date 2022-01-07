; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_zaccess_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_zaccess_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@B_TRUE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@WRITE_MASK_DATA = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ZFS_READONLY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32*, i64*, i64, i32*)* @zfs_zaccess_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_zaccess_common(%struct.TYPE_8__* %0, i32 %1, i32* %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i64, i64* @B_TRUE, align 8
  %22 = load i64*, i64** %11, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %6
  %31 = load i32*, i32** %10, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %7, align 4
  br label %74

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @zfs_zaccess_dataset_check(%struct.TYPE_8__* %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* @B_FALSE, align 8
  %39 = load i64*, i64** %11, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %7, align 4
  br label %74

41:                                               ; preds = %32
  %42 = load i64, i64* %12, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32*, i32** %10, align 8
  store i32 0, i32* %45, align 4
  store i32 0, i32* %7, align 4
  br label %74

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @WRITE_MASK_DATA, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = call %struct.TYPE_10__* @ZTOV(%struct.TYPE_8__* %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VDIR, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ZFS_READONLY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @EPERM, align 4
  %67 = call i32 @SET_ERROR(i32 %66)
  store i32 %67, i32* %7, align 4
  br label %74

68:                                               ; preds = %58, %51, %46
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i64, i64* @B_FALSE, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @zfs_zaccess_aces_check(%struct.TYPE_8__* %69, i32* %70, i64 %71, i32* %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %68, %65, %44, %37, %30
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @zfs_zaccess_dataset_check(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_10__* @ZTOV(%struct.TYPE_8__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_zaccess_aces_check(%struct.TYPE_8__*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
