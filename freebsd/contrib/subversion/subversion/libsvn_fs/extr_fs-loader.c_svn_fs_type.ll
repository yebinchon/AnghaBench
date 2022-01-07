; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@FS_TYPE_FILENAME = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_FS_TYPE_BDB = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @svn_fs_type(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @FS_TYPE_FILENAME, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i8* @svn_dirent_join(i8* %15, i32 %16, i32* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @APR_READ, align 4
  %21 = load i32, i32* @APR_BUFFERED, align 4
  %22 = or i32 %20, %21
  %23 = load i32*, i32** %7, align 8
  %24 = call %struct.TYPE_7__* @svn_io_file_open(i32** %11, i8* %19, i32 %22, i32 0, i32* %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %10, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @APR_STATUS_IS_ENOENT(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call %struct.TYPE_7__* @svn_io_check_path(i8* %34, i64* %13, i32* %35)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %14, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %41 = call i32 @svn_error_clear(%struct.TYPE_7__* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %4, align 8
  br label %76

43:                                               ; preds = %33
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @svn_node_dir, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = call i32 @svn_error_clear(%struct.TYPE_7__* %48)
  %50 = load i8*, i8** @SVN_FS_TYPE_BDB, align 8
  %51 = load i8**, i8*** %5, align 8
  store i8* %50, i8** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %4, align 8
  br label %76

53:                                               ; preds = %43
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %4, align 8
  br label %76

55:                                               ; preds = %27, %3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %4, align 8
  br label %76

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  store i32 128, i32* %12, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @svn_io_read_length_line(i32* %62, i8* %63, i32* %12, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @svn_io_file_close(i32* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %73 = call i8* @apr_pstrdup(i32* %71, i8* %72)
  %74 = load i8**, i8*** %5, align 8
  store i8* %73, i8** %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %4, align 8
  br label %76

76:                                               ; preds = %61, %58, %53, %47, %39
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %77
}

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local %struct.TYPE_7__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_read_length_line(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
