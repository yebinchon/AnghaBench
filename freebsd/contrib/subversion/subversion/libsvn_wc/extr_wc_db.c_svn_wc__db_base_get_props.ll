; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_get_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_get_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"The node '%s' has a BASE status that has no properties.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_base_get_props(i32** %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32**, i32*** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @svn_wc__db_base_get_info(i64* %12, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %13, i32* null, i32* %14, i8* %15, i32* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @svn_wc__db_status_normal, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %5
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %29 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %9, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @svn_dirent_local_style(i8* %30, i32* %31)
  %33 = call i32* @svn_error_createf(i32 %28, i32* null, i32 %29, i32 %32)
  store i32* %33, i32** %6, align 8
  br label %36

34:                                               ; preds = %23, %5
  %35 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32*, i32** %6, align 8
  ret i32* %37
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_base_get_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
