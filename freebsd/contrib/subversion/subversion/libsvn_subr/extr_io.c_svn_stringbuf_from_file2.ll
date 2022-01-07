; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_stringbuf_from_file2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_svn_stringbuf_from_file2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Can't open stdin\00", align 1
@FALSE = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_stringbuf_from_file2(i32** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 45
  br i1 %14, label %15, label %36

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @apr_file_open_stdin(i32** %8, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = call i32* @svn_error_wrap_apr(i32 %26, i32 %27)
  store i32* %28, i32** %4, align 8
  br label %54

29:                                               ; preds = %21
  %30 = load i32**, i32*** %5, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @stringbuf_from_aprfile(i32** %30, i8* null, i32* %31, i32 %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  br label %50

36:                                               ; preds = %15, %3
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @APR_READ, align 4
  %39 = load i32, i32* @APR_OS_DEFAULT, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @svn_io_file_open(i32** %8, i8* %37, i32 %38, i32 %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32**, i32*** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @TRUE, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @stringbuf_from_aprfile(i32** %43, i8* %44, i32* %45, i32 %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %50

50:                                               ; preds = %36, %29
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32* @svn_io_file_close(i32* %51, i32* %52)
  store i32* %53, i32** %4, align 8
  br label %54

54:                                               ; preds = %50, %25
  %55 = load i32*, i32** %4, align 8
  ret i32* %55
}

declare dso_local i32 @apr_file_open_stdin(i32**, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @stringbuf_from_aprfile(i32**, i8*, i32*, i32, i32*) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32* @svn_io_file_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
