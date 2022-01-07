; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_find_editor_binary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_find_editor_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_config_t = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"SVN_EDITOR\00", align 1
@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_HELPERS = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_EDITOR_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"VISUAL\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@SVN_ERR_CL_NO_EXTERNAL_EDITOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [169 x i8] c"The EDITOR, SVN_EDITOR or VISUAL environment variable or 'editor-cmd' run-time configuration option is empty or consists solely of whitespace. Expected a shell command.\00", align 1
@.str.4 = private unnamed_addr constant [132 x i8] c"None of the environment variables SVN_EDITOR, VISUAL or EDITOR are set, and no 'editor-cmd' run-time configuration option was found\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_CLIENT_EDITOR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, i32*)* @find_editor_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_editor_binary(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.svn_config_t*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %25 = call %struct.svn_config_t* @svn_hash_gets(i32* %23, i32 %24)
  br label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi %struct.svn_config_t* [ %25, %22 ], [ null, %26 ]
  store %struct.svn_config_t* %28, %struct.svn_config_t** %9, align 8
  %29 = load %struct.svn_config_t*, %struct.svn_config_t** %9, align 8
  %30 = load i32, i32* @SVN_CONFIG_SECTION_HELPERS, align 4
  %31 = load i32, i32* @SVN_CONFIG_OPTION_EDITOR_CMD, align 4
  %32 = call i32 @svn_config_get(%struct.svn_config_t* %29, i8** %8, i32 %30, i32 %31, i32* null)
  br label %33

33:                                               ; preds = %27, %16
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load i8*, i8** %8, align 8
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %59, %46
  %49 = load i8*, i8** %10, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i8*, i8** %10, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @svn_ctype_isspace(i8 signext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %62

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %10, align 8
  br label %48

62:                                               ; preds = %57, %48
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @SVN_ERR_CL_NO_EXTERNAL_EDITOR, align 4
  %68 = call i32 @_(i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.3, i64 0, i64 0))
  %69 = call i32* @svn_error_create(i32 %67, i32* null, i32 %68)
  store i32* %69, i32** %4, align 8
  br label %79

70:                                               ; preds = %62
  br label %75

71:                                               ; preds = %43
  %72 = load i32, i32* @SVN_ERR_CL_NO_EXTERNAL_EDITOR, align 4
  %73 = call i32 @_(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i64 0, i64 0))
  %74 = call i32* @svn_error_create(i32 %72, i32* null, i32 %73)
  store i32* %74, i32** %4, align 8
  br label %79

75:                                               ; preds = %70
  %76 = load i8*, i8** %8, align 8
  %77 = load i8**, i8*** %5, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %4, align 8
  br label %79

79:                                               ; preds = %75, %71, %66
  %80 = load i32*, i32** %4, align 8
  ret i32* %80
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.svn_config_t* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_config_get(%struct.svn_config_t*, i8**, i32, i32, i32*) #1

declare dso_local i32 @svn_ctype_isspace(i8 signext) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
