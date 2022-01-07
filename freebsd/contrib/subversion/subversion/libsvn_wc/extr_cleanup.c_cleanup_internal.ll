; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_cleanup.c_cleanup_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_cleanup.c_cleanup_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_WC__HAS_WORK_QUEUE = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@status_dummy_callback = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64, i64, i64, i32, i8*, i32*)* @cleanup_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cleanup_internal(i32* %0, i8* %1, i64 %2, i64 %3, i64 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32*, i32** %16, align 8
  %23 = call i32 @can_be_cleaned(i32* %17, i32* %20, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = call i32 @svn_wc__db_wclock_find_root(i8** %19, i32* %25, i8* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i8*, i8** %19, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = load i8*, i8** %19, align 8
  store i8* %34, i8** %10, align 8
  br label %35

35:                                               ; preds = %33, %8
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = call i32 @svn_wc__db_wclock_obtain(i32* %36, i8* %37, i32 -1, i64 %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* @SVN_WC__HAS_WORK_QUEUE, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load i32*, i32** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i8*, i8** %15, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @svn_wc__wq_run(i32* %46, i8* %47, i32 %48, i8* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %53

53:                                               ; preds = %45, %35
  %54 = load i32*, i32** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @svn_wc__db_is_wcroot(i64* %18, i32* %54, i8* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i64, i64* %18, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load i64, i64* %13, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i32*, i32** %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @svn_wc__adm_cleanup_tmp_area(i32* %65, i8* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = call i32 @svn_wc__db_pristine_cleanup(i32* %70, i8* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  br label %75

75:                                               ; preds = %64, %61, %53
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i32*, i32** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* @svn_depth_infinity, align 4
  %82 = load i32, i32* @FALSE, align 4
  %83 = load i32, i32* @FALSE, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = load i32, i32* @status_dummy_callback, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i8*, i8** %15, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = call i32 @svn_wc__internal_walk_status(i32* %79, i8* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32* null, i32 %85, i32* null, i32 %86, i8* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  br label %91

91:                                               ; preds = %78, %75
  %92 = load i32*, i32** %9, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = call i32 @svn_wc__db_wclock_release(i32* %92, i8* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %97
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @can_be_cleaned(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_wclock_find_root(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wclock_obtain(i32*, i8*, i32, i64, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_is_wcroot(i64*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__adm_cleanup_tmp_area(i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_cleanup(i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__internal_walk_status(i32*, i8*, i32, i32, i32, i32, i32*, i32, i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_wclock_release(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
