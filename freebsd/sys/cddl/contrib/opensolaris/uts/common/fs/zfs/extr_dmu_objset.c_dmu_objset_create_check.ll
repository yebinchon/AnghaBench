; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_create_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_create_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ZFS_PROP_FILESYSTEM_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dmu_objset_create_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_objset_create_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @dmu_tx_pool(i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @strchr(i32 %17, i8 signext 64)
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @SET_ERROR(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %73

23:                                               ; preds = %2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strlen(i32 %26)
  %28 = load i64, i64* @ZFS_MAX_DATASET_NAME_LEN, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @ENAMETOOLONG, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %73

33:                                               ; preds = %23
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @dataset_nestcheck(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ENAMETOOLONG, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %73

42:                                               ; preds = %33
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FTAG, align 4
  %48 = call i32 @dsl_dir_hold(i32* %43, i32 %46, i32 %47, i32** %8, i8** %9)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %73

53:                                               ; preds = %42
  %54 = load i8*, i8** %9, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @FTAG, align 4
  %59 = call i32 @dsl_dir_rele(i32* %57, i32 %58)
  %60 = load i32, i32* @EEXIST, align 4
  %61 = call i32 @SET_ERROR(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %73

62:                                               ; preds = %53
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @ZFS_PROP_FILESYSTEM_LIMIT, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dsl_fs_ss_limit_check(i32* %63, i32 1, i32 %64, i32* null, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* @FTAG, align 4
  %71 = call i32 @dsl_dir_rele(i32* %69, i32 %70)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %62, %56, %51, %39, %30, %20
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @dataset_nestcheck(i32) #1

declare dso_local i32 @dsl_dir_hold(i32*, i32, i32, i32**, i8**) #1

declare dso_local i32 @dsl_dir_rele(i32*, i32) #1

declare dso_local i32 @dsl_fs_ss_limit_check(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
