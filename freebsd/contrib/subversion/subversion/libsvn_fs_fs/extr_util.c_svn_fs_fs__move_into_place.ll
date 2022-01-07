; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_util.c_svn_fs_fs__move_into_place.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_util.c_svn_fs_fs__move_into_place.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@APR_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @svn_fs_fs__move_into_place(i8* %0, i8* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @svn_io_copy_perms(i8* %14, i8* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call %struct.TYPE_8__* @svn_io_file_rename2(i8* %19, i8* %20, i64 %21, i32* %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %12, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %5
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @APR_STATUS_IS_EXDEV(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = call i32 @svn_error_clear(%struct.TYPE_8__* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @svn_io_copy_file(i8* %35, i8* %36, i32 %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %32
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @APR_WRITE, align 4
  %46 = load i32, i32* @APR_OS_DEFAULT, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @svn_io_file_open(i32** %13, i8* %44, i32 %45, i32 %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @svn_io_file_flush_to_disk(i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @svn_io_file_close(i32* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  br label %58

58:                                               ; preds = %43, %32
  br label %66

59:                                               ; preds = %26, %5
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %64 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %63)
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %6, align 8
  br label %68

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %58
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %6, align 8
  br label %68

68:                                               ; preds = %66, %62
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %69
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_copy_perms(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_io_file_rename2(i8*, i8*, i64, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EXDEV(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_io_copy_file(i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_file_flush_to_disk(i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
