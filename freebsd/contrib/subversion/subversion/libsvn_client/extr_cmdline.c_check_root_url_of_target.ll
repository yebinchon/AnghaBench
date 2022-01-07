; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_cmdline.c_check_root_url_of_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_cmdline.c_check_root_url_of_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@SVN_ERR_RA_CANNOT_CREATE_SESSION = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"All non-relative targets must have the same root URL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i8**, i8*, i32*, i32*)* @check_root_url_of_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @check_root_url_of_target(i8** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @svn_opt_parse_path(i32* %13, i8** %12, i8* %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @svn_path_is_url(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @svn_dirent_get_absolute(i8** %12, i8* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  br label %26

26:                                               ; preds = %21, %4
  %27 = load i8*, i8** %12, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call %struct.TYPE_9__* @svn_client_get_repos_root(i8** %11, i32* null, i8* %27, i32* %28, i32* %29, i32* %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %10, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %71

34:                                               ; preds = %26
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SVN_ERR_ENTRY_NOT_FOUND, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %64, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %64, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SVN_ERR_RA_CANNOT_CREATE_SESSION, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SVN_ERR_CLIENT_BAD_REVISION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58, %52, %46, %40, %34
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = call i32 @svn_error_clear(%struct.TYPE_9__* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %5, align 8
  br label %94

68:                                               ; preds = %58
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %70 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %69)
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %5, align 8
  br label %94

71:                                               ; preds = %26
  %72 = load i8**, i8*** %6, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load i8*, i8** %11, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i8**, i8*** %6, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call i64 @strcmp(i8* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %86 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %87 = call %struct.TYPE_9__* @svn_error_createf(i32 %85, i32* null, i32 %86)
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %5, align 8
  br label %94

88:                                               ; preds = %78
  br label %92

89:                                               ; preds = %75, %71
  %90 = load i8*, i8** %11, align 8
  %91 = load i8**, i8*** %6, align 8
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %89, %88
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %5, align 8
  br label %94

94:                                               ; preds = %92, %84, %68, %64
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %95
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_opt_parse_path(i32*, i8**, i8*, i32*) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_client_get_repos_root(i8**, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @svn_error_createf(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
