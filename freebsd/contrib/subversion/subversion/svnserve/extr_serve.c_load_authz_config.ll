; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_load_authz_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_load_authz_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32*, i32 }

@SVN_CONFIG_SECTION_GENERAL = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_AUTHZ_DB = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_GROUPS_DB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_AUTHZ_INVALID_CONFIG = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_FORCE_USERNAME_CASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@CASE_FORCE_UPPER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@CASE_FORCE_LOWER = common dso_local global i8* null, align 8
@CASE_ASIS = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i32*, i32*)* @load_authz_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_authz_config(%struct.TYPE_4__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* @SVN_CONFIG_SECTION_GENERAL, align 4
  %16 = load i32, i32* @SVN_CONFIG_OPTION_AUTHZ_DB, align 4
  %17 = call i32 @svn_config_get(i32* %14, i8** %10, i32 %15, i32 %16, i32* null)
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @SVN_CONFIG_SECTION_GENERAL, align 4
  %20 = load i32, i32* @SVN_CONFIG_OPTION_GROUPS_DB, align 4
  %21 = call i32 @svn_config_get(i32* %18, i8** %11, i32 %19, i32 %20, i32* null)
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %91

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32* @canonicalize_access_file(i8** %10, %struct.TYPE_4__* %25, i8* %26, i32* %27)
  store i32* %28, i32** %12, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32*, i32** %12, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32* @canonicalize_access_file(i8** %11, %struct.TYPE_4__* %35, i8* %36, i32* %37)
  store i32* %38, i32** %12, align 8
  br label %39

39:                                               ; preds = %34, %31, %24
  %40 = load i32*, i32** %12, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32* @svn_repos_authz_read3(i32** %44, i8* %45, i8* %46, i32 %47, i32 %50, i32* %51, i32* %52)
  store i32* %53, i32** %12, align 8
  br label %54

54:                                               ; preds = %42, %39
  %55 = load i32*, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @SVN_ERR_AUTHZ_INVALID_CONFIG, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = call i32* @svn_error_create(i32 %58, i32* %59, i32* null)
  store i32* %60, i32** %5, align 8
  br label %99

61:                                               ; preds = %54
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @SVN_CONFIG_SECTION_GENERAL, align 4
  %64 = load i32, i32* @SVN_CONFIG_OPTION_FORCE_USERNAME_CASE, align 4
  %65 = call i32 @svn_config_get(i32* %62, i8** %13, i32 %63, i32 %64, i32* null)
  %66 = load i8*, i8** %13, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %90

68:                                               ; preds = %61
  %69 = load i8*, i8** %13, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** @CASE_FORCE_UPPER, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %89

76:                                               ; preds = %68
  %77 = load i8*, i8** %13, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i8*, i8** @CASE_FORCE_LOWER, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %88

84:                                               ; preds = %76
  %85 = load i8*, i8** @CASE_ASIS, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %72
  br label %90

90:                                               ; preds = %89, %61
  br label %97

91:                                               ; preds = %4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load i8*, i8** @CASE_ASIS, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %91, %90
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %5, align 8
  br label %99

99:                                               ; preds = %97, %57
  %100 = load i32*, i32** %5, align 8
  ret i32* %100
}

declare dso_local i32 @svn_config_get(i32*, i8**, i32, i32, i32*) #1

declare dso_local i32* @canonicalize_access_file(i8**, %struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32* @svn_repos_authz_read3(i32**, i8*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
