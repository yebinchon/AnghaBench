; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_util.c_svn_fs_x__read_min_unpacked_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_util.c_svn_fs_x__read_min_unpacked_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_READ = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__read_min_unpacked_rev(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @svn_fs_x__path_min_unpacked_rev(i32* %10, i32* %11)
  %13 = load i32, i32* @APR_READ, align 4
  %14 = load i32, i32* @APR_BUFFERED, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @APR_OS_DEFAULT, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @svn_io_file_open(i32** %8, i32 %12, i32 %15, i32 %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  store i32 80, i32* %9, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @svn_io_read_length_line(i32* %20, i8* %21, i32* %9, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @svn_io_file_close(i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %31 = call i32 @svn_revnum_parse(i32* %29, i8* %30, i32* null)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %33
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_min_unpacked_rev(i32*, i32*) #1

declare dso_local i32 @svn_io_read_length_line(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32 @svn_revnum_parse(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
