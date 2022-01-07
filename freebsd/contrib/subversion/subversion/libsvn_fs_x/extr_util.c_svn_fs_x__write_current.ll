; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_util.c_svn_fs_x__write_current.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_util.c_svn_fs_x__write_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__write_current(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @apr_psprintf(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i8* @svn_fs_x__path_current(i32* %14, i32* %15)
  store i8* %16, i8** %9, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i8* @svn_fs_x__path_next(i32* %17, i32* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @APR_WRITE, align 4
  %22 = load i32, i32* @APR_CREATE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @APR_BUFFERED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @APR_OS_DEFAULT, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @svn_io_file_open(i32** %10, i8* %20, i32 %25, i32 %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %10, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @svn_io_file_write_full(i32* %30, i8* %31, i32 %33, i32* null, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @svn_io_file_close(i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @svn_io_copy_perms(i8* %41, i8* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @svn_io_file_rename2(i8* %46, i8* %47, i32 %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %52
}

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i8* @svn_fs_x__path_current(i32*, i32*) #1

declare dso_local i8* @svn_fs_x__path_next(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32 @svn_io_copy_perms(i8*, i8*, i32*) #1

declare dso_local i32 @svn_io_file_rename2(i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
