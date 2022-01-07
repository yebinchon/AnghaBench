; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_svn_repos__post_commit_error_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_svn_repos__post_commit_error_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [11 x i8] c"(no error)\00", align 1
@SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"post-commit hook failed with no error message.\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"post commit FS processing had error:\0A%s\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"(no error message)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"post commit FS processing had error:\0A%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_repos__post_commit_error_str(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %3, align 8
  br label %103

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = call %struct.TYPE_7__* @svn_error_purge_tracing(%struct.TYPE_7__* %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %4, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = load i32, i32* @SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED, align 4
  %18 = call %struct.TYPE_7__* @svn_error_find_cause(%struct.TYPE_7__* %16, i32 %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %7, align 8
  br label %32

30:                                               ; preds = %21, %13
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %7, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %85

35:                                               ; preds = %32
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = icmp eq %struct.TYPE_7__* %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @apr_pstrdup(i32* %45, i8* %48)
  store i8* %49, i8** %8, align 8
  br label %52

50:                                               ; preds = %39
  %51 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %50, %44
  br label %84

53:                                               ; preds = %35
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @apr_pstrdup(i32* %59, i8* %62)
  br label %66

64:                                               ; preds = %53
  %65 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %58
  %67 = phi i8* [ %63, %58 ], [ %65, %64 ]
  store i8* %67, i8** %8, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  br label %80

78:                                               ; preds = %66
  %79 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i8* [ %77, %74 ], [ %79, %78 ]
  %82 = load i8*, i8** %8, align 8
  %83 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %68, i8* %69, i8* %81, i8* %82)
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %80, %52
  br label %101

85:                                               ; preds = %32
  %86 = load i32*, i32** %5, align 8
  %87 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  br label %98

96:                                               ; preds = %85
  %97 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi i8* [ %95, %92 ], [ %97, %96 ]
  %100 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %86, i8* %87, i8* %99)
  store i8* %100, i8** %8, align 8
  br label %101

101:                                              ; preds = %98, %84
  %102 = load i8*, i8** %8, align 8
  store i8* %102, i8** %3, align 8
  br label %103

103:                                              ; preds = %101, %11
  %104 = load i8*, i8** %3, align 8
  ret i8* %104
}

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_7__* @svn_error_purge_tracing(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @svn_error_find_cause(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
