; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_util.c_svn_wc__fetch_base_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_util.c_svn_wc__fetch_base_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.svn_wc__shim_fetch_baton_t = type { i32, i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @svn_wc__fetch_base_func(i8** %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.svn_wc__shim_fetch_baton_t*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i8*, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.svn_wc__shim_fetch_baton_t*
  store %struct.svn_wc__shim_fetch_baton_t* %19, %struct.svn_wc__shim_fetch_baton_t** %14, align 8
  %20 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %14, align 8
  %21 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i8* @svn_dirent_join(i32 %22, i8* %23, i32* %24)
  store i8* %25, i8** %17, align 8
  %26 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %14, align 8
  %27 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %17, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call %struct.TYPE_8__* @svn_wc__db_base_get_info(i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %28, i8* %29, i32* %30, i32* %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %16, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %6
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %43 = call i32 @svn_error_clear(%struct.TYPE_8__* %42)
  %44 = load i8**, i8*** %8, align 8
  store i8* null, i8** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %7, align 8
  br label %71

46:                                               ; preds = %35, %6
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %51 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %50)
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %7, align 8
  br label %71

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52
  %54 = load i32*, i32** %15, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8**, i8*** %8, align 8
  store i8* null, i8** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %7, align 8
  br label %71

59:                                               ; preds = %53
  %60 = load i8**, i8*** %8, align 8
  %61 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %14, align 8
  %62 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %17, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @svn_wc__db_pristine_get_path(i8** %60, i32 %63, i8* %64, i32* %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %7, align 8
  br label %71

71:                                               ; preds = %59, %56, %49, %41
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %72
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc__db_base_get_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_pristine_get_path(i8**, i32, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
