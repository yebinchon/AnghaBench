; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream__install_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream__install_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.install_baton_t* }
%struct.install_baton_t = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_20__* null, align 8
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @svn_stream__install_stream(%struct.TYPE_19__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.install_baton_t*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.install_baton_t*, %struct.install_baton_t** %14, align 8
  store %struct.install_baton_t* %15, %struct.install_baton_t** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @svn_dirent_is_absolute(i8* %16)
  %18 = call i32 @SVN_ERR_ASSERT(i32 %17)
  %19 = load %struct.install_baton_t*, %struct.install_baton_t** %10, align 8
  %20 = getelementptr inbounds %struct.install_baton_t, %struct.install_baton_t* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call %struct.TYPE_20__* @svn_io_file_close(i32 %22, i32* %23)
  %25 = call i32 @SVN_ERR(%struct.TYPE_20__* %24)
  %26 = load %struct.install_baton_t*, %struct.install_baton_t** %10, align 8
  %27 = getelementptr inbounds %struct.install_baton_t, %struct.install_baton_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call %struct.TYPE_20__* @svn_io_file_rename2(i32 %28, i8* %29, i32 %30, i32* %31)
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %11, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %37 = icmp ne %struct.TYPE_20__* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @APR_STATUS_IS_ENOENT(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @svn_dirent_dirname(i8* %45, i32* %46)
  %48 = load i32*, i32** %9, align 8
  %49 = call %struct.TYPE_20__* @svn_io_make_dir_recursively(i32 %47, i32* %48)
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %12, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %51 = icmp ne %struct.TYPE_20__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %55 = call %struct.TYPE_20__* @svn_error_compose_create(%struct.TYPE_20__* %53, %struct.TYPE_20__* %54)
  %56 = call %struct.TYPE_20__* @svn_error_trace(%struct.TYPE_20__* %55)
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %5, align 8
  br label %74

57:                                               ; preds = %44
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %59 = call i32 @svn_error_clear(%struct.TYPE_20__* %58)
  br label %60

60:                                               ; preds = %57
  %61 = load %struct.install_baton_t*, %struct.install_baton_t** %10, align 8
  %62 = getelementptr inbounds %struct.install_baton_t, %struct.install_baton_t* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call %struct.TYPE_20__* @svn_io_file_rename2(i32 %63, i8* %64, i32 %65, i32* %66)
  %68 = call i32 @SVN_ERR(%struct.TYPE_20__* %67)
  br label %72

69:                                               ; preds = %38, %35, %4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %71 = call i32 @SVN_ERR(%struct.TYPE_20__* %70)
  br label %72

72:                                               ; preds = %69, %60
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %5, align 8
  br label %74

74:                                               ; preds = %72, %52
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  ret %struct.TYPE_20__* %75
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @svn_io_file_close(i32, i32*) #1

declare dso_local %struct.TYPE_20__* @svn_io_file_rename2(i32, i8*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i64) #1

declare dso_local %struct.TYPE_20__* @svn_io_make_dir_recursively(i32, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_20__* @svn_error_trace(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @svn_error_compose_create(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
