; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_create_snapshots.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_create_snapshots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s@\00", align 1
@FTAG = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ZFS WARNING: Unable to create ZVOL %s (error=%d).\0A\00", align 1
@DS_FIND_SNAPSHOTS = common dso_local global i32 0, align 4
@dmu_objset_prefetch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @zvol_create_snapshots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zvol_create_snapshots(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = load i32, i32* @KM_SLEEP, align 4
  %12 = call i8* @kmem_alloc(i32 %10, i32 %11)
  store i8* %12, i8** %7, align 8
  br label %13

13:                                               ; preds = %65, %2
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @FTAG, align 4
  %24 = call i32 @dmu_objset_rele(i32* %22, i32 %23)
  %25 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %25, i32* %8, align 4
  br label %66

26:                                               ; preds = %13
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @dmu_objset_pool(i32* %27)
  %29 = load i32, i32* @FTAG, align 4
  %30 = call i32 @dsl_pool_config_enter(i32 %28, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @MAXPATHLEN, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = call i32 @dmu_snapshot_list_next(i32* %31, i32 %34, i8* %38, i64* %6, i64* %5, i32* null)
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @dmu_objset_pool(i32* %40)
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @dsl_pool_config_exit(i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %26
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ENOENT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %46
  br label %66

52:                                               ; preds = %26
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @zvol_create_minor(i8* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @EEXIST, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %62, i32 %63)
  br label %66

65:                                               ; preds = %57, %52
  br label %13

66:                                               ; preds = %61, %51, %21
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* @MAXPATHLEN, align 4
  %69 = call i32 @kmem_free(i8* %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @dmu_objset_rele(i32*, i32) #1

declare dso_local i32 @dsl_pool_config_enter(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local i32 @dmu_snapshot_list_next(i32*, i32, i8*, i64*, i64*, i32*) #1

declare dso_local i32 @dsl_pool_config_exit(i32, i32) #1

declare dso_local i32 @zvol_create_minor(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
