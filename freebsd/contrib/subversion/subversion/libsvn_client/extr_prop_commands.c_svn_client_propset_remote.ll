; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_svn_client_propset_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_svn_client_propset_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Targets must be URLs\00", align 1
@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Setting property on non-local targets needs a base revision\00", align 1
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Setting property '%s' on non-local targets is not supported\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_propset_remote(i8* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32* %5, i32 %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = call i32 @svn_path_is_url(i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %10
  %26 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = call i32* @svn_error_create(i32 %26, i32* null, i32 %27)
  store i32* %28, i32** %11, align 8
  br label %70

29:                                               ; preds = %10
  %30 = load i8*, i8** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @check_prop_name(i8* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @SVN_IS_VALID_REVNUM(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32* @svn_error_create(i32 %38, i32* null, i32 %39)
  store i32* %40, i32** %11, align 8
  br label %70

41:                                               ; preds = %29
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %44 = call i64 @strcmp(i8* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %49 = call i64 @strcmp(i8* %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %53 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i8*, i8** %12, align 8
  %55 = call i32* @svn_error_createf(i32 %52, i32* null, i32 %53, i8* %54)
  store i32* %55, i32** %11, align 8
  br label %70

56:                                               ; preds = %46
  %57 = load i8*, i8** %12, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32*, i32** %17, align 8
  %63 = load i32, i32* %18, align 4
  %64 = load i8*, i8** %19, align 8
  %65 = load i32*, i32** %20, align 8
  %66 = load i32*, i32** %21, align 8
  %67 = call i32 @propset_on_url(i8* %57, i32* %58, i8* %59, i32 %60, i32 %61, i32* %62, i32 %63, i8* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %69, i32** %11, align 8
  br label %70

70:                                               ; preds = %56, %51, %37, %25
  %71 = load i32*, i32** %11, align 8
  ret i32* %71
}

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_prop_name(i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @propset_on_url(i8*, i32*, i8*, i32, i32, i32*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
