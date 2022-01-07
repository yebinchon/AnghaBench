; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_read_handler_length_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_read_handler_length_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.length_verify_baton_t = type { i64, i32 }

@SVN_ERR_DIFF_UNEXPECTED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Base85 data expands to longer than declared filesize\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Base85 data expands to smaller than declared filesize\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64*)* @read_handler_length_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_handler_length_verify(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.length_verify_baton_t*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.length_verify_baton_t*
  store %struct.length_verify_baton_t* %11, %struct.length_verify_baton_t** %8, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.length_verify_baton_t*, %struct.length_verify_baton_t** %8, align 8
  %15 = getelementptr inbounds %struct.length_verify_baton_t, %struct.length_verify_baton_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = call i32 @svn_stream_read_full(i32 %16, i8* %17, i64* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.length_verify_baton_t*, %struct.length_verify_baton_t** %8, align 8
  %24 = getelementptr inbounds %struct.length_verify_baton_t, %struct.length_verify_baton_t* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @SVN_ERR_DIFF_UNEXPECTED_DATA, align 4
  %29 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %30 = call i32* @svn_error_create(i32 %28, i32* null, i32 %29)
  store i32* %30, i32** %4, align 8
  br label %56

31:                                               ; preds = %3
  %32 = load i64, i64* %9, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.length_verify_baton_t*, %struct.length_verify_baton_t** %8, align 8
  %40 = getelementptr inbounds %struct.length_verify_baton_t, %struct.length_verify_baton_t* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @SVN_ERR_DIFF_UNEXPECTED_DATA, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32* @svn_error_create(i32 %44, i32* null, i32 %45)
  store i32* %46, i32** %4, align 8
  br label %56

47:                                               ; preds = %36, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.length_verify_baton_t*, %struct.length_verify_baton_t** %8, align 8
  %52 = getelementptr inbounds %struct.length_verify_baton_t, %struct.length_verify_baton_t* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %4, align 8
  br label %56

56:                                               ; preds = %48, %43, %27
  %57 = load i32*, i32** %4, align 8
  ret i32* %57
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_read_full(i32, i8*, i64*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
