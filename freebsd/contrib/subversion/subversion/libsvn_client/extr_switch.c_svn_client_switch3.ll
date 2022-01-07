; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_switch.c_svn_client_switch3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_switch.c_svn_client_switch3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"'%s' is not a local path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_switch3(i32* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32 %5, i64 %6, i64 %7, i64 %8, i64 %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i64 %8, i64* %22, align 8
  store i64 %9, i64* %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %27, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = call i64 @svn_path_is_url(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %12
  %33 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %34 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %15, align 8
  %36 = call i32* @svn_error_createf(i32 %33, i32* null, i32 %34, i8* %35)
  store i32* %36, i32** %13, align 8
  br label %60

37:                                               ; preds = %12
  %38 = load i32*, i32** %14, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = load i32, i32* %19, align 4
  %44 = load i64, i64* %20, align 8
  %45 = load i64, i64* %21, align 8
  %46 = load i64, i64* %22, align 8
  %47 = load i64, i64* %23, align 8
  %48 = load i32*, i32** %24, align 8
  %49 = load i32*, i32** %25, align 8
  %50 = call i32* @svn_client__switch_internal(i32* %38, i8* %39, i8* %40, i32* %41, i32* %42, i32 %43, i64 %44, i64 %45, i64 %46, i64 %47, i64* %27, i32* %48, i32* %49)
  store i32* %50, i32** %26, align 8
  %51 = load i64, i64* %27, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = load i8*, i8** %15, align 8
  %55 = load i32*, i32** %25, align 8
  %56 = call i32 @svn_io_sleep_for_timestamps(i8* %54, i32* %55)
  br label %57

57:                                               ; preds = %53, %37
  %58 = load i32*, i32** %26, align 8
  %59 = call i32* @svn_error_trace(i32* %58)
  store i32* %59, i32** %13, align 8
  br label %60

60:                                               ; preds = %57, %32
  %61 = load i32*, i32** %13, align 8
  ret i32* %61
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_client__switch_internal(i32*, i8*, i8*, i32*, i32*, i32, i64, i64, i64, i64, i64*, i32*, i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
