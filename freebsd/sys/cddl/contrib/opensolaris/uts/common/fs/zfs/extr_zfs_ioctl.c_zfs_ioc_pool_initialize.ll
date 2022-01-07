; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTAG = common dso_local global i32 0, align 4
@ZPOOL_INITIALIZE_COMMAND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@POOL_INITIALIZE_CANCEL = common dso_local global i64 0, align 8
@POOL_INITIALIZE_DO = common dso_local global i64 0, align 8
@POOL_INITIALIZE_SUSPEND = common dso_local global i64 0, align 8
@ZPOOL_INITIALIZE_VDEVS = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_pool_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_pool_initialize(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @FTAG, align 4
  %20 = call i32 @spa_open(i8* %18, i32** %8, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %122

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @ZPOOL_INITIALIZE_COMMAND, align 4
  %28 = call i64 @nvlist_lookup_uint64(i32* %26, i32 %27, i64* %10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @FTAG, align 4
  %33 = call i32 @spa_close(i32* %31, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = call i32 @SET_ERROR(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %122

36:                                               ; preds = %25
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @POOL_INITIALIZE_CANCEL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @POOL_INITIALIZE_DO, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @POOL_INITIALIZE_SUSPEND, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @FTAG, align 4
  %51 = call i32 @spa_close(i32* %49, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @SET_ERROR(i32 %52)
  store i32 %53, i32* %4, align 4
  br label %122

54:                                               ; preds = %44, %40, %36
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @ZPOOL_INITIALIZE_VDEVS, align 4
  %57 = call i64 @nvlist_lookup_nvlist(i32* %55, i32 %56, i32** %11)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @FTAG, align 4
  %62 = call i32 @spa_close(i32* %60, i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @SET_ERROR(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %122

65:                                               ; preds = %54
  %66 = call i32* (...) @fnvlist_alloc()
  store i32* %66, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = call i32* @nvlist_next_nvpair(i32* %67, i32* null)
  store i32* %68, i32** %14, align 8
  br label %69

69:                                               ; preds = %96, %65
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %100

72:                                               ; preds = %69
  %73 = load i32*, i32** %14, align 8
  %74 = call i64 @fnvpair_value_uint64(i32* %73)
  store i64 %74, i64* %15, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @spa_vdev_initialize(i32* %75, i64 %76, i64 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %72
  %82 = load i32, i32* @MAXNAMELEN, align 4
  %83 = zext i32 %82 to i64
  %84 = call i8* @llvm.stacksave()
  store i8* %84, i8** %16, align 8
  %85 = alloca i8, i64 %83, align 16
  store i64 %83, i64* %17, align 8
  %86 = trunc i64 %83 to i32
  %87 = load i64, i64* %15, align 8
  %88 = call i32 @snprintf(i8* %85, i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @fnvlist_add_int64(i32* %89, i8* %85, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  %94 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %94)
  br label %95

95:                                               ; preds = %81, %72
  br label %96

96:                                               ; preds = %95
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i32* @nvlist_next_nvpair(i32* %97, i32* %98)
  store i32* %99, i32** %14, align 8
  br label %69

100:                                              ; preds = %69
  %101 = load i32*, i32** %12, align 8
  %102 = call i64 @fnvlist_size(i32* %101)
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @ZPOOL_INITIALIZE_VDEVS, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @fnvlist_add_nvlist(i32* %105, i32 %106, i32* %107)
  br label %109

109:                                              ; preds = %104, %100
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @fnvlist_free(i32* %110)
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* @FTAG, align 4
  %114 = call i32 @spa_close(i32* %112, i32 %113)
  %115 = load i32, i32* %13, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* @EINVAL, align 4
  br label %120

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %59, %48, %30, %23
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @spa_open(i8*, i32**, i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @fnvpair_value_uint64(i32*) #1

declare dso_local i32 @spa_vdev_initialize(i32*, i64, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @fnvlist_add_int64(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @fnvlist_size(i32*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
