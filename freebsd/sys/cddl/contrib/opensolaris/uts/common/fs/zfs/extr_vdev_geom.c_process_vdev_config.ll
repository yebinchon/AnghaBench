; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_process_vdev_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_process_vdev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TOP_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_TXG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32***, i64*, i32*, i8*, i64*)* @process_vdev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_vdev_config(i32*** %0, i64* %1, i32* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32***, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32*** %0, i32**** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64* %4, i64** %10, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %22 = call i64 @nvlist_lookup_string(i32* %20, i32 %21, i8** %18)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %5
  %25 = load i8*, i8** %18, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @strcmp(i8* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %5
  br label %113

30:                                               ; preds = %24
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %33 = call i64 @nvlist_lookup_uint64(i32* %31, i32 %32, i64* %12)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %113

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @ZPOOL_CONFIG_TOP_GUID, align 4
  %39 = call i64 @nvlist_lookup_uint64(i32* %37, i32 %38, i64* %13)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %113

42:                                               ; preds = %36
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %45 = call i64 @nvlist_lookup_nvlist(i32* %43, i32 %44, i32** %11)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %113

48:                                               ; preds = %42
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @ZPOOL_CONFIG_ID, align 4
  %51 = call i64 @nvlist_lookup_uint64(i32* %49, i32 %50, i64* %15)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %113

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @ZPOOL_CONFIG_POOL_TXG, align 4
  %57 = call i64 @nvlist_lookup_uint64(i32* %55, i32 %56, i64* %16)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @VERIFY(i32 %59)
  %61 = load i64*, i64** %10, align 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load i64, i64* %12, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %113

70:                                               ; preds = %64
  br label %74

71:                                               ; preds = %54
  %72 = load i64, i64* %12, align 8
  %73 = load i64*, i64** %10, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %70
  %75 = load i32***, i32**** %6, align 8
  %76 = load i64*, i64** %7, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @resize_configs(i32*** %75, i64* %76, i64 %77)
  %79 = load i32***, i32**** %6, align 8
  %80 = load i32**, i32*** %79, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds i32*, i32** %80, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %107

85:                                               ; preds = %74
  %86 = load i32***, i32**** %6, align 8
  %87 = load i32**, i32*** %86, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @ZPOOL_CONFIG_POOL_TXG, align 4
  %92 = call i64 @nvlist_lookup_uint64(i32* %90, i32 %91, i64* %17)
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @VERIFY(i32 %94)
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* %17, align 8
  %98 = icmp sle i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %113

100:                                              ; preds = %85
  %101 = load i32***, i32**** %6, align 8
  %102 = load i32**, i32*** %101, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @nvlist_free(i32* %105)
  br label %107

107:                                              ; preds = %100, %74
  %108 = load i32*, i32** %8, align 8
  %109 = load i32***, i32**** %6, align 8
  %110 = load i32**, i32*** %109, align 8
  %111 = load i64, i64* %15, align 8
  %112 = getelementptr inbounds i32*, i32** %110, i64 %111
  store i32* %108, i32** %112, align 8
  br label %116

113:                                              ; preds = %99, %69, %53, %47, %41, %35, %29
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @nvlist_free(i32* %114)
  br label %116

116:                                              ; preds = %113, %107
  ret void
}

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @resize_configs(i32***, i64*, i64) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
