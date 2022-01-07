; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_util.c_fetch_base_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_util.c_fetch_base_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.shim_callbacks_baton = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8**, i8*, i8*, i32, i32*, i32*)* @fetch_base_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @fetch_base_func(i8** %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.shim_callbacks_baton*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.shim_callbacks_baton*
  store %struct.shim_callbacks_baton* %20, %struct.shim_callbacks_baton** %14, align 8
  %21 = load %struct.shim_callbacks_baton*, %struct.shim_callbacks_baton** %14, align 8
  %22 = getelementptr inbounds %struct.shim_callbacks_baton, %struct.shim_callbacks_baton* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = call i8* @svn_hash_gets(i32 %23, i8* %24)
  store i8* %25, i8** %15, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i8**, i8*** %8, align 8
  store i8* null, i8** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %7, align 8
  br label %72

31:                                               ; preds = %6
  %32 = load %struct.shim_callbacks_baton*, %struct.shim_callbacks_baton** %14, align 8
  %33 = getelementptr inbounds %struct.shim_callbacks_baton, %struct.shim_callbacks_baton* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call %struct.TYPE_8__* @svn_wc_get_pristine_contents2(i32** %16, i32 %34, i8* %35, i32* %36, i32* %37)
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %18, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %49 = call i32 @svn_error_clear(%struct.TYPE_8__* %48)
  %50 = load i8**, i8*** %8, align 8
  store i8* null, i8** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %7, align 8
  br label %72

52:                                               ; preds = %41, %31
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %57 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %56)
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %7, align 8
  br label %72

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58
  %60 = load i8**, i8*** %8, align 8
  %61 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @svn_stream_open_unique(i32** %17, i8** %60, i32* null, i32 %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @svn_stream_copy3(i32* %66, i32* %67, i32* null, i32* null, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %7, align 8
  br label %72

72:                                               ; preds = %59, %55, %47, %28
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %73
}

declare dso_local i8* @svn_hash_gets(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @svn_wc_get_pristine_contents2(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
