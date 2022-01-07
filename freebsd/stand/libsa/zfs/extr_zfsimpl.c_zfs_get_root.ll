; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_get_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_get_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"ZFS: can't read MOS object directory\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DMU_POOL_PROPS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"bootfs\00", align 1
@DMU_POOL_ROOT_DATASET = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"ZFS: can't find root dsl_dir\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64*)* @zfs_get_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_get_root(%struct.TYPE_9__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i64*, i64** %5, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* @DMU_POOL_DIRECTORY_OBJECT, align 8
  %17 = call i64 @objset_get_dnode(%struct.TYPE_9__* %13, i32* %15, i64 %16, %struct.TYPE_11__* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  store i32 %21, i32* %3, align 4
  br label %66

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load i8*, i8** @DMU_POOL_PROPS, align 8
  %25 = call i64 @zap_lookup(%struct.TYPE_9__* %23, %struct.TYPE_11__* %6, i8* %24, i32 8, i32 1, i64* %8)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @objset_get_dnode(%struct.TYPE_9__* %28, i32* %30, i64 %31, %struct.TYPE_11__* %7)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = call i64 @zap_lookup(%struct.TYPE_9__* %35, %struct.TYPE_11__* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 8, i32 1, i64* %9)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = load i64*, i64** %5, align 8
  store i64 %42, i64* %43, align 8
  store i32 0, i32* %3, align 4
  br label %66

44:                                               ; preds = %38, %34, %27, %22
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = load i8*, i8** @DMU_POOL_ROOT_DATASET, align 8
  %47 = call i64 @zap_lookup(%struct.TYPE_9__* %45, %struct.TYPE_11__* %6, i8* %46, i32 8, i32 1, i64* %10)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @objset_get_dnode(%struct.TYPE_9__* %50, i32* %52, i64 %53, %struct.TYPE_11__* %6)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49, %44
  %57 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EIO, align 4
  store i32 %58, i32* %3, align 4
  br label %66

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %61 = bitcast i32* %60 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %11, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %56, %41, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @objset_get_dnode(%struct.TYPE_9__*, i32*, i64, %struct.TYPE_11__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @zap_lookup(%struct.TYPE_9__*, %struct.TYPE_11__*, i8*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
