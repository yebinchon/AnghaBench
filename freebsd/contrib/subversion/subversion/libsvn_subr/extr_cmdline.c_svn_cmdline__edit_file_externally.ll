; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_svn_cmdline__edit_file_externally.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_svn_cmdline__edit_file_externally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_FILEPATH_NATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't get working directory\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't change working directory to '%s'\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Can't restore working directory\00", align 1
@stderr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"svn: \00", align 1
@SVN_ERR_EXTERNAL_PROGRAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"system('%s') returned %d\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cmdline__edit_file_externally(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @svn_dirent_split(i8** %12, i8** %13, i8* %18, i32* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @find_editor_binary(i8** %10, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32, i32* @APR_FILEPATH_NATIVE, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @apr_filepath_get(i8** %15, i32 %25, i32* %26)
  store i64 %27, i64* %17, align 8
  %28 = load i64, i64* %17, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i64, i64* %17, align 8
  %32 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = call i32* (i64, i32, ...) @svn_error_wrap_apr(i64 %31, i32 %32)
  store i32* %33, i32** %5, align 8
  br label %87

34:                                               ; preds = %4
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %46

41:                                               ; preds = %34
  %42 = load i8*, i8** %12, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @svn_path_cstring_from_utf8(i8** %14, i8* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %46

46:                                               ; preds = %41, %40
  %47 = load i8*, i8** %14, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @apr_filepath_set(i8* %47, i32* %48)
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %17, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i8*, i8** %12, align 8
  %56 = call i32* (i64, i32, ...) @svn_error_wrap_apr(i64 %53, i32 %54, i8* %55)
  store i32* %56, i32** %5, align 8
  br label %87

57:                                               ; preds = %46
  %58 = load i32*, i32** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i8* @apr_psprintf(i32* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %59, i8* %60)
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @system(i8* %62)
  store i32 %63, i32* %16, align 4
  %64 = load i8*, i8** %15, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i64 @apr_filepath_set(i8* %64, i32* %65)
  store i64 %66, i64* %17, align 8
  %67 = load i64, i64* %17, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %57
  %70 = load i64, i64* %17, align 8
  %71 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %72 = call i32* (i64, i32, ...) @svn_error_wrap_apr(i64 %70, i32 %71)
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @svn_handle_error2(i32* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %69, %57
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* @SVN_ERR_EXTERNAL_PROGRAM, align 4
  %81 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32* @svn_error_createf(i32 %80, i32* null, i32 %81, i8* %82, i32 %83)
  store i32* %84, i32** %5, align 8
  br label %87

85:                                               ; preds = %76
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %5, align 8
  br label %87

87:                                               ; preds = %85, %79, %52, %30
  %88 = load i32*, i32** %5, align 8
  ret i32* %88
}

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @find_editor_binary(i8**, i8*, i32*) #1

declare dso_local i64 @apr_filepath_get(i8**, i32, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_path_cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i64 @apr_filepath_set(i8*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @svn_handle_error2(i32*, i32, i32, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
