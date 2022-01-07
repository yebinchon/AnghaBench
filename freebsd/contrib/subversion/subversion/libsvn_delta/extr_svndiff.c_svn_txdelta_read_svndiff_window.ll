; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_svn_txdelta_read_svndiff_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_svn_txdelta_read_svndiff_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_SVNDIFF_UNEXPECTED_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unexpected end of svndiff input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_txdelta_read_svndiff_window(i32** %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @read_window_header(i32* %18, i32* %10, i64* %11, i64* %12, i64* %13, i64* %14, i64* %16)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %14, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %15, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %15, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @apr_palloc(i32* %24, i32 %26)
  store i8* %27, i8** %17, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = call i32 @svn_stream_read_full(i32* %28, i8* %29, i64* %15)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = add nsw i64 %33, %34
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %4
  %38 = load i32, i32* @SVN_ERR_SVNDIFF_UNEXPECTED_END, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %40 = call i32* @svn_error_create(i32 %38, i32* null, i32 %39)
  store i32* %40, i32** %5, align 8
  br label %57

41:                                               ; preds = %4
  %42 = load i32*, i32** %9, align 8
  %43 = call i8* @apr_palloc(i32* %42, i32 4)
  %44 = bitcast i8* %43 to i32*
  %45 = load i32**, i32*** %6, align 8
  store i32* %44, i32** %45, align 8
  %46 = load i32**, i32*** %6, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32* @decode_window(i32* %47, i32 %48, i64 %49, i64 %50, i64 %51, i64 %52, i8* %53, i32* %54, i32 %55)
  store i32* %56, i32** %5, align 8
  br label %57

57:                                               ; preds = %41, %37
  %58 = load i32*, i32** %5, align 8
  ret i32* %58
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_window_header(i32*, i32*, i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_stream_read_full(i32*, i8*, i64*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @decode_window(i32*, i32, i64, i64, i64, i64, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
