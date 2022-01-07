; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_space_snaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_space_snaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"firstsnap\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_space_snaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_space_snaps(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @nvlist_lookup_string(i32* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %12)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @SET_ERROR(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %108

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @FTAG, align 4
  %25 = call i32 @dsl_pool_hold(i8* %23, i32 %24, i32** %9)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %108

30:                                               ; preds = %22
  %31 = load i32*, i32** %9, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @FTAG, align 4
  %34 = call i32 @dsl_dataset_hold(i32* %31, i8* %32, i32 %33, %struct.TYPE_6__** %10)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = load i32, i32* @FTAG, align 4
  %45 = call i32 @dsl_dataset_rele(%struct.TYPE_6__* %43, i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %42, %37, %30
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @FTAG, align 4
  %54 = call i32 @dsl_pool_rele(i32* %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %108

56:                                               ; preds = %48
  %57 = load i32*, i32** %9, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* @FTAG, align 4
  %60 = call i32 @dsl_dataset_hold(i32* %57, i8* %58, i32 %59, %struct.TYPE_6__** %11)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = load i32, i32* @FTAG, align 4
  %71 = call i32 @dsl_dataset_rele(%struct.TYPE_6__* %69, i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = call i32 @SET_ERROR(i32 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %68, %63, %56
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %79 = load i32, i32* @FTAG, align 4
  %80 = call i32 @dsl_dataset_rele(%struct.TYPE_6__* %78, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* @FTAG, align 4
  %83 = call i32 @dsl_pool_rele(i32* %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %108

85:                                               ; preds = %74
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = call i32 @dsl_dataset_space_wouldfree(%struct.TYPE_6__* %86, %struct.TYPE_6__* %87, i32* %13, i32* %14, i32* %15)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %90 = load i32, i32* @FTAG, align 4
  %91 = call i32 @dsl_dataset_rele(%struct.TYPE_6__* %89, i32 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = load i32, i32* @FTAG, align 4
  %94 = call i32 @dsl_dataset_rele(%struct.TYPE_6__* %92, i32 %93)
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* @FTAG, align 4
  %97 = call i32 @dsl_pool_rele(i32* %95, i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @fnvlist_add_uint64(i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @fnvlist_add_uint64(i32* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @fnvlist_add_uint64(i32* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %85, %77, %51, %28, %19
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_pool_hold(i8*, i32, i32**) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dsl_pool_rele(i32*, i32) #1

declare dso_local i32 @dsl_dataset_space_wouldfree(%struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
