; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_get_bool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_get_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_tristate_true = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_tristate_false = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_BAD_CONFIG_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Config error: invalid boolean value '%s' for '[%s] %s'\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Config error: invalid boolean value '%s' for '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i8*, i8*)* @get_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_bool(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i64 @svn_tristate__from_word(i8* %13)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* @svn_tristate_true, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @TRUE, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %52

21:                                               ; preds = %5
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @svn_tristate_false, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %51

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %50

34:                                               ; preds = %28
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* @SVN_ERR_BAD_CONFIG_VALUE, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i32* (i32, i32*, i32, i8*, i8*, ...) @svn_error_createf(i32 %38, i32* null, i32 %39, i8* %40, i8* %41, i8* %42)
  store i32* %43, i32** %6, align 8
  br label %54

44:                                               ; preds = %34
  %45 = load i32, i32* @SVN_ERR_BAD_CONFIG_VALUE, align 4
  %46 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32* (i32, i32*, i32, i8*, i8*, ...) @svn_error_createf(i32 %45, i32* null, i32 %46, i8* %47, i8* %48)
  store i32* %49, i32** %6, align 8
  br label %54

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50, %25
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %53, i32** %6, align 8
  br label %54

54:                                               ; preds = %52, %44, %37
  %55 = load i32*, i32** %6, align 8
  ret i32* %55
}

declare dso_local i64 @svn_tristate__from_word(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
