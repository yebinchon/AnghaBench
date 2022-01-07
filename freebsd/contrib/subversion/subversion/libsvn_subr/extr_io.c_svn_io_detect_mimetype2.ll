; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_detect_mimetype2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_detect_mimetype2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@svn_io_detect_mimetype2.generic_binary = internal constant i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_7__* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_BAD_FILENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Can't detect MIME type of non-file '%s'\00", align 1
@APR_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @svn_io_detect_mimetype2(i8** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1024, i32* %14, align 4
  %17 = load i8**, i8*** %6, align 8
  store i8* null, i8** %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @svn_path_splitext(i32* null, i8** %16, i8* %21, i32* %22)
  %24 = load i8*, i8** %16, align 8
  %25 = call i32 @fileext_tolower(i8* %24)
  %26 = load i32*, i32** %8, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = call i8* @svn_hash_gets(i32* %26, i8* %27)
  store i8* %28, i8** %15, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i8*, i8** %15, align 8
  %32 = load i8**, i8*** %6, align 8
  store i8* %31, i8** %32, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %5, align 8
  br label %85

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %4
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @svn_io_check_path(i8* %36, i64* %10, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @svn_node_file, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load i32, i32* @SVN_ERR_BAD_FILENAME, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i8*, i8** %7, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @svn_dirent_local_style(i8* %46, i32* %47)
  %49 = call %struct.TYPE_7__* @svn_error_createf(i32 %44, i32* null, i32 %45, i32 %48)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %5, align 8
  br label %85

50:                                               ; preds = %35
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @APR_READ, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @svn_io_file_open(i32** %11, i8* %51, i32 %52, i32 0, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %58 = load i32*, i32** %9, align 8
  %59 = call %struct.TYPE_7__* @svn_io_file_read(i32* %56, i8* %57, i32* %14, i32* %58)
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %12, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %50
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @APR_STATUS_IS_EOF(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %5, align 8
  br label %85

70:                                               ; preds = %62, %50
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %72 = call i32 @svn_error_clear(%struct.TYPE_7__* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @svn_io_file_close(i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %78 = load i32, i32* %14, align 4
  %79 = call i64 @svn_io_is_binary_data(i8* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8** %82, align 8
  br label %83

83:                                               ; preds = %81, %70
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %5, align 8
  br label %85

85:                                               ; preds = %83, %68, %43, %30
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %86
}

declare dso_local i32 @svn_path_splitext(i32*, i8**, i8*, i32*) #1

declare dso_local i32 @fileext_tolower(i8*) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_io_file_read(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @APR_STATUS_IS_EOF(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i64 @svn_io_is_binary_data(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
