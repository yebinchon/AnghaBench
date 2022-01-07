; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_sb_bucket.c_svn_ra_serf__copy_into_spillbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_sb_bucket.c_svn_ra_serf__copy_into_spillbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SB_BLOCKSIZE = common dso_local global i32 0, align 4
@SB_MAXSIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SERF_READ_ALL_AVAIL = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to read the request\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__copy_into_spillbuf(i32** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @SB_BLOCKSIZE, align 4
  %14 = load i32, i32* @SB_MAXSIZE, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32* @svn_spillbuf__create(i32 %13, i32 %14, i32* %15)
  %17 = load i32**, i32*** %6, align 8
  store i32* %16, i32** %17, align 8
  br label %18

18:                                               ; preds = %48, %4
  %19 = load i64, i64* @TRUE, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @SERF_READ_ALL_AVAIL, align 4
  %24 = call i64 @serf_bucket_read(i32* %22, i32 %23, i8** %11, i32* %12)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @APR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @APR_EOF, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %35 = call i32* @svn_ra_serf__wrap_err(i64 %33, i32 %34)
  store i32* %35, i32** %5, align 8
  br label %51

36:                                               ; preds = %28, %21
  %37 = load i32**, i32*** %6, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @svn_spillbuf__write(i32* %38, i8* %39, i32 %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @APR_EOF, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %49

48:                                               ; preds = %36
  br label %18

49:                                               ; preds = %47, %18
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %49, %32
  %52 = load i32*, i32** %5, align 8
  ret i32* %52
}

declare dso_local i32* @svn_spillbuf__create(i32, i32, i32*) #1

declare dso_local i64 @serf_bucket_read(i32*, i32, i8**, i32*) #1

declare dso_local i32* @svn_ra_serf__wrap_err(i64, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_spillbuf__write(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
