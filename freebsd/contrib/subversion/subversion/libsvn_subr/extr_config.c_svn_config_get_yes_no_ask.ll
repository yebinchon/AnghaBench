; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config_get_yes_no_ask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config_get_yes_no_ask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_CONFIG_ASK = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_CONFIG_TRUE = common dso_local global i8* null, align 8
@SVN_CONFIG_FALSE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_config_get_yes_no_ask(i32* %0, i8** %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @svn_config_get(i32* %13, i8** %11, i8* %14, i8* %15, i32* null)
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %11, align 8
  br label %21

21:                                               ; preds = %19, %5
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** @SVN_CONFIG_ASK, align 8
  %27 = call i64 @svn_cstring_casecmp(i8* %25, i8* %26)
  %28 = icmp eq i64 0, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** @SVN_CONFIG_ASK, align 8
  %31 = load i8**, i8*** %7, align 8
  store i8* %30, i8** %31, align 8
  br label %48

32:                                               ; preds = %24, %21
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @get_bool(i64* %12, i8* %33, i32 %34, i8* %35, i8* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i8*, i8** @SVN_CONFIG_TRUE, align 8
  br label %45

43:                                               ; preds = %32
  %44 = load i8*, i8** @SVN_CONFIG_FALSE, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i8* [ %42, %41 ], [ %44, %43 ]
  %47 = load i8**, i8*** %7, align 8
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %45, %29
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %49
}

declare dso_local i32 @svn_config_get(i32*, i8**, i8*, i8*, i32*) #1

declare dso_local i64 @svn_cstring_casecmp(i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_bool(i64*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
