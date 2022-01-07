; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_file_create_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_io_file_create_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_EXCL = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_io_file_create_bytes(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %13, i32** %12, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @APR_WRITE, align 4
  %16 = load i32, i32* @APR_CREATE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @APR_EXCL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @APR_OS_DEFAULT, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @svn_io_file_open(i32** %10, i8* %14, i32 %19, i32 %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load i32*, i32** %10, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32* @svn_io_file_write_full(i32* %27, i8* %28, i32 %29, i32* %11, i32* %30)
  store i32* %31, i32** %12, align 8
  br label %32

32:                                               ; preds = %26, %4
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @svn_io_file_close(i32* %34, i32* %35)
  %37 = call i32* @svn_error_compose_create(i32* %33, i32 %36)
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load i32*, i32** %12, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @TRUE, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @svn_io_remove_file2(i8* %42, i32 %43, i32* %44)
  %46 = call i32* @svn_error_compose_create(i32* %41, i32 %45)
  %47 = call i32* @svn_error_trace(i32* %46)
  store i32* %47, i32** %5, align 8
  br label %50

48:                                               ; preds = %32
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %49, i32** %5, align 8
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i32*, i32** %5, align 8
  ret i32* %51
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32* @svn_io_file_write_full(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
