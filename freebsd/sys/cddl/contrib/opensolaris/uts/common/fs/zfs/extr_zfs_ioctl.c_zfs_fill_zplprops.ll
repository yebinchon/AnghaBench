; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_fill_zplprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_fill_zplprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPL_VERSION = common dso_local global i64 0, align 8
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZPL_VERSION_FUID = common dso_local global i64 0, align 8
@ZPL_VERSION_SA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @zfs_fill_zplprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_fill_zplprops(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i64, i64* @ZPL_VERSION, align 8
  store i64 %21, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %22 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = trunc i64 %23 to i32
  %28 = call i32 @strlcpy(i8* %25, i8* %26, i32 %27)
  %29 = call i8* @strrchr(i8* %25, i8 signext 47)
  store i8* %29, i8** %16, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i8*, i8** %16, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @FTAG, align 4
  %38 = call i32 @spa_open(i8* %36, i32** %17, i32 %37)
  store i32 %38, i32* %19, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %19, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %76

42:                                               ; preds = %4
  %43 = load i32*, i32** %17, align 8
  %44 = call i64 @spa_version(i32* %43)
  store i64 %44, i64* %18, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = load i32, i32* @FTAG, align 4
  %47 = call i32 @spa_close(i32* %45, i32 %46)
  %48 = load i64, i64* %18, align 8
  %49 = call i64 @zfs_zpl_version_map(i64 %48)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @ZPL_VERSION_FUID, align 8
  %52 = icmp sge i64 %50, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @ZPL_VERSION_SA, align 8
  %56 = icmp sge i64 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @FTAG, align 4
  %59 = call i32 @dmu_objset_hold(i8* %25, i32 %58, i32** %13)
  store i32 %59, i32* %19, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i32, i32* %19, align 4
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %76

63:                                               ; preds = %42
  %64 = load i32*, i32** %13, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @zfs_fill_zplprops_impl(i32* %64, i64 %65, i32 %66, i32 %67, i32* %68, i32* %69, i32* %70)
  store i32 %71, i32* %19, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* @FTAG, align 4
  %74 = call i32 @dmu_objset_rele(i32* %72, i32 %73)
  %75 = load i32, i32* %19, align 4
  store i32 %75, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %76

76:                                               ; preds = %63, %61, %40
  %77 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @spa_open(i8*, i32**, i32) #2

declare dso_local i64 @spa_version(i32*) #2

declare dso_local i32 @spa_close(i32*, i32) #2

declare dso_local i64 @zfs_zpl_version_map(i64) #2

declare dso_local i32 @dmu_objset_hold(i8*, i32, i32**) #2

declare dso_local i32 @zfs_fill_zplprops_impl(i32*, i64, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @dmu_objset_rele(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
