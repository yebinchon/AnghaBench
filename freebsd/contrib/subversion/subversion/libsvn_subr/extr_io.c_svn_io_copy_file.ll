; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_copy_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_copy_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_READ = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@svn_io_file_del_none = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can't copy '%s' to '%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_copy_file(i8* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @APR_READ, align 4
  %17 = load i32, i32* @APR_OS_DEFAULT, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @svn_io_file_open(i32** %10, i8* %15, i32 %16, i32 %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @svn_dirent_dirname(i8* %21, i32* %22)
  %24 = load i32, i32* @svn_io_file_del_none, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @svn_io_open_unique_file3(i32** %11, i8** %13, i32 %23, i32 %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @copy_contents(i32* %29, i32* %30, i32* %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %4
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %38 = load i8*, i8** %6, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @svn_dirent_local_style(i8* %38, i32* %39)
  %41 = load i8*, i8** %13, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @svn_dirent_local_style(i8* %41, i32* %42)
  %44 = call i32* @svn_error_wrap_apr(i64 %36, i32 %37, i32 %40, i32 %43)
  store i32* %44, i32** %14, align 8
  br label %46

45:                                               ; preds = %4
  store i32* null, i32** %14, align 8
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32*, i32** %14, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @svn_io_file_close(i32* %48, i32* %49)
  %51 = call i32* @svn_error_compose_create(i32* %47, i32 %50)
  store i32* %51, i32** %14, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @svn_io_file_close(i32* %53, i32* %54)
  %56 = call i32* @svn_error_compose_create(i32* %52, i32 %55)
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load i32*, i32** %14, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i32, i32* @TRUE, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @svn_io_remove_file2(i8* %61, i32 %62, i32* %63)
  %65 = call i32* @svn_error_compose_create(i32* %60, i32 %64)
  store i32* %65, i32** %5, align 8
  br label %82

66:                                               ; preds = %46
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @svn_io_copy_perms(i8* %70, i8* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i8*, i8** %13, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @svn_io_file_rename2(i8* %76, i8* %77, i32 %78, i32* %79)
  %81 = call i32* @svn_error_trace(i32 %80)
  store i32* %81, i32** %5, align 8
  br label %82

82:                                               ; preds = %75, %59
  %83 = load i32*, i32** %5, align 8
  ret i32* %83
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_open_unique_file3(i32**, i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i64 @copy_contents(i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_copy_perms(i8*, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_io_file_rename2(i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
