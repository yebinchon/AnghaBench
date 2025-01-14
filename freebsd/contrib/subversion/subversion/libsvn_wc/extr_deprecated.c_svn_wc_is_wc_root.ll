; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_is_wc_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_is_wc_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_10__* null, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @svn_wc_is_wc_root(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @svn_path_is_empty(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = call i64 @svn_dirent_is_root(i8* %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16, %4
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %5, align 8
  br label %67

26:                                               ; preds = %16
  %27 = load i8*, i8** %7, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call %struct.TYPE_10__* @svn_dirent_get_absolute(i8** %11, i8* %27, i32* %28)
  %30 = call i32 @SVN_ERR(%struct.TYPE_10__* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @svn_wc__adm_get_db(i32* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call %struct.TYPE_10__* @svn_wc__context_create_with_db(i32** %10, i32* null, i32 %32, i32* %33)
  %35 = call i32 @SVN_ERR(%struct.TYPE_10__* %34)
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call %struct.TYPE_10__* @svn_wc_is_wc_root2(i32* %36, i32* %37, i8* %38, i32* %39)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %12, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = icmp ne %struct.TYPE_10__* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %26
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49, %43
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %57 = call i32 @svn_error_clear(%struct.TYPE_10__* %56)
  %58 = load i32, i32* @TRUE, align 4
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  br label %63

60:                                               ; preds = %49, %26
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %62 = call i32 @SVN_ERR(%struct.TYPE_10__* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @svn_wc_context_destroy(i32* %64)
  %66 = call %struct.TYPE_10__* @svn_error_trace(i32 %65)
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %5, align 8
  br label %67

67:                                               ; preds = %63, %22
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %68
}

declare dso_local i64 @svn_path_is_empty(i8*) #1

declare dso_local i64 @svn_dirent_is_root(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc__context_create_with_db(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__adm_get_db(i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc_is_wc_root2(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
