; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_svn_wc__db_drop_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_svn_wc__db_drop_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"'%s' is not a working copy root\00", align 1
@close_wcroot = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_drop_root(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.TYPE_7__* @svn_hash_gets(i32 %14, i8* %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %4, align 8
  br label %76

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcmp(i32 %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* @SVN_ERR_WC_NOT_WORKING_COPY, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @svn_dirent_local_style(i8* %31, i32* %32)
  %34 = call i32* @svn_error_createf(i32 %29, i32* null, i32 %30, i32 %33)
  store i32* %34, i32** %4, align 8
  br label %76

35:                                               ; preds = %21
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @apr_hash_first(i32* %36, i32 %39)
  store i32* %40, i32** %9, align 8
  br label %41

41:                                               ; preds = %58, %35
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load i32*, i32** %9, align 8
  %46 = call %struct.TYPE_7__* @apr_hash_this_val(i32* %45)
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %11, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = icmp eq %struct.TYPE_7__* %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @apr_hash_this_key(i32* %54)
  %56 = call i32 @svn_hash_sets(i32 %53, i32 %55, i32* null)
  br label %57

57:                                               ; preds = %50, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32*, i32** %9, align 8
  %60 = call i32* @apr_hash_next(i32* %59)
  store i32* %60, i32** %9, align 8
  br label %41

61:                                               ; preds = %41
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = load i32, i32* @close_wcroot, align 4
  %67 = call i64 @apr_pool_cleanup_run(i32 %64, %struct.TYPE_7__* %65, i32 %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @APR_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i64, i64* %10, align 8
  %73 = call i32* @svn_error_wrap_apr(i64 %72, i32* null)
  store i32* %73, i32** %4, align 8
  br label %76

74:                                               ; preds = %61
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %4, align 8
  br label %76

76:                                               ; preds = %74, %71, %28, %19
  %77 = load i32*, i32** %4, align 8
  ret i32* %77
}

declare dso_local %struct.TYPE_7__* @svn_hash_gets(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32*) #1

declare dso_local i32 @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i64 @apr_pool_cleanup_run(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
