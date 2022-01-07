; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_util.c_svn_wc__fetch_props_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_util.c_svn_wc__fetch_props_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.svn_wc__shim_fetch_baton_t = type { i32, i64, i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @svn_wc__fetch_props_func(i32** %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.svn_wc__shim_fetch_baton_t*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.svn_wc__shim_fetch_baton_t*
  store %struct.svn_wc__shim_fetch_baton_t* %18, %struct.svn_wc__shim_fetch_baton_t** %14, align 8
  %19 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %14, align 8
  %20 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i8* @svn_dirent_join(i32 %21, i8* %22, i32* %23)
  store i8* %24, i8** %15, align 8
  %25 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %14, align 8
  %26 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %6
  %30 = load i32**, i32*** %8, align 8
  %31 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %14, align 8
  %32 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call %struct.TYPE_9__* @svn_wc__db_base_get_props(i32** %30, i32 %33, i8* %34, i32* %35, i32* %36)
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %16, align 8
  br label %47

38:                                               ; preds = %6
  %39 = load i32**, i32*** %8, align 8
  %40 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %14, align 8
  %41 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call %struct.TYPE_9__* @svn_wc__db_read_props(i32** %39, i32 %42, i8* %43, i32* %44, i32* %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %16, align 8
  br label %47

47:                                               ; preds = %38, %29
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %58 = call i32 @svn_error_clear(%struct.TYPE_9__* %57)
  %59 = load i32*, i32** %12, align 8
  %60 = call i32* @apr_hash_make(i32* %59)
  %61 = load i32**, i32*** %8, align 8
  store i32* %60, i32** %61, align 8
  br label %69

62:                                               ; preds = %50, %47
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %64 = icmp ne %struct.TYPE_9__* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %67 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %66)
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %7, align 8
  br label %71

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %56
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %7, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %72
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_wc__db_base_get_props(i32**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_wc__db_read_props(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
