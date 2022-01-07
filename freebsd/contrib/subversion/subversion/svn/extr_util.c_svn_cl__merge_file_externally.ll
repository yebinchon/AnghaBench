; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__merge_file_externally.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__merge_file_externally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_config_t = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"SVN_MERGE\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8
@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_HELPERS = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_MERGE_TOOL_CMD = common dso_local global i32 0, align 4
@SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [105 x i8] c"The SVN_MERGE environment variable is empty or consists solely of whitespace. Expected a shell command.\0A\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"The environment variable SVN_MERGE and the merge-tool-cmd run-time configuration option were not set.\0A\00", align 1
@APR_FILEPATH_NATIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_EXTERNAL_PROGRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"The external merge tool '%s' exited with exit code %d.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__merge_file_externally(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.svn_config_t*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [7 x i8*], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load i32*, i32** %17, align 8
  %26 = call i64 @apr_env_get(i8** %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load i64, i64* @APR_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %8
  store i8* null, i8** %18, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %35 = call %struct.svn_config_t* @svn_hash_gets(i32* %33, i32 %34)
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi %struct.svn_config_t* [ %35, %32 ], [ null, %36 ]
  store %struct.svn_config_t* %38, %struct.svn_config_t** %19, align 8
  %39 = load %struct.svn_config_t*, %struct.svn_config_t** %19, align 8
  %40 = load i32, i32* @SVN_CONFIG_SECTION_HELPERS, align 4
  %41 = load i32, i32* @SVN_CONFIG_OPTION_MERGE_TOOL_CMD, align 4
  %42 = call i32 @svn_config_get(%struct.svn_config_t* %39, i8** %18, i32 %40, i32 %41, i32* null)
  br label %43

43:                                               ; preds = %37, %8
  %44 = load i8*, i8** %18, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load i8*, i8** %18, align 8
  store i8* %47, i8** %20, align 8
  br label %48

48:                                               ; preds = %59, %46
  %49 = load i8*, i8** %20, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i8*, i8** %20, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @svn_ctype_isspace(i8 signext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %62

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %20, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %20, align 8
  br label %48

62:                                               ; preds = %57, %48
  %63 = load i8*, i8** %20, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL, align 4
  %68 = call i32 @_(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32* @svn_error_create(i32 %67, i32* null, i32 %68)
  store i32* %69, i32** %9, align 8
  br label %130

70:                                               ; preds = %62
  br label %75

71:                                               ; preds = %43
  %72 = load i32, i32* @SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL, align 4
  %73 = call i32 @_(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32* @svn_error_create(i32 %72, i32* null, i32 %73)
  store i32* %74, i32** %9, align 8
  br label %130

75:                                               ; preds = %70
  %76 = bitcast [7 x i8*]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %76, i8 0, i64 56, i1 false)
  %77 = load i32, i32* @APR_FILEPATH_NATIVE, align 4
  %78 = load i32*, i32** %17, align 8
  %79 = call i64 @apr_filepath_get(i8** %22, i32 %77, i32* %78)
  store i64 %79, i64* %24, align 8
  %80 = load i64, i64* %24, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i64, i64* %24, align 8
  %84 = call i32* @svn_error_wrap_apr(i64 %83, i32* null)
  store i32* %84, i32** %9, align 8
  br label %130

85:                                               ; preds = %75
  %86 = load i8*, i8** %18, align 8
  %87 = getelementptr inbounds [7 x i8*], [7 x i8*]* %21, i64 0, i64 0
  store i8* %86, i8** %87, align 16
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds [7 x i8*], [7 x i8*]* %21, i64 0, i64 1
  store i8* %88, i8** %89, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds [7 x i8*], [7 x i8*]* %21, i64 0, i64 2
  store i8* %90, i8** %91, align 16
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds [7 x i8*], [7 x i8*]* %21, i64 0, i64 3
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds [7 x i8*], [7 x i8*]* %21, i64 0, i64 4
  store i8* %94, i8** %95, align 16
  %96 = load i8*, i8** %14, align 8
  %97 = getelementptr inbounds [7 x i8*], [7 x i8*]* %21, i64 0, i64 5
  store i8* %96, i8** %97, align 8
  %98 = getelementptr inbounds [7 x i8*], [7 x i8*]* %21, i64 0, i64 6
  store i8* null, i8** %98, align 16
  %99 = load i8*, i8** %22, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @svn_dirent_internal_style(i8* %99, i32* %100)
  %102 = load i8*, i8** %18, align 8
  %103 = getelementptr inbounds [7 x i8*], [7 x i8*]* %21, i64 0, i64 0
  %104 = load i32, i32* @TRUE, align 4
  %105 = load i32*, i32** %17, align 8
  %106 = call i32 @svn_io_run_cmd(i32 %101, i8* %102, i8** %103, i32* %23, i32* null, i32 %104, i32* null, i32* null, i32* null, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load i32, i32* %23, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %85
  %111 = load i32, i32* %23, align 4
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, i32* @SVN_ERR_EXTERNAL_PROGRAM, align 4
  %115 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i8*, i8** %18, align 8
  %117 = load i32, i32* %23, align 4
  %118 = call i32* @svn_error_createf(i32 %114, i32* null, i32 %115, i8* %116, i32 %117)
  store i32* %118, i32** %9, align 8
  br label %130

119:                                              ; preds = %110, %85
  %120 = load i32*, i32** %16, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* %23, align 4
  %124 = icmp eq i32 %123, 1
  %125 = zext i1 %124 to i32
  %126 = load i32*, i32** %16, align 8
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %122, %119
  br label %128

128:                                              ; preds = %127
  %129 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %129, i32** %9, align 8
  br label %130

130:                                              ; preds = %128, %113, %82, %71, %66
  %131 = load i32*, i32** %9, align 8
  ret i32* %131
}

declare dso_local i64 @apr_env_get(i8**, i8*, i32*) #1

declare dso_local %struct.svn_config_t* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_config_get(%struct.svn_config_t*, i8**, i32, i32, i32*) #1

declare dso_local i32 @svn_ctype_isspace(i8 signext) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @apr_filepath_get(i8**, i32, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_run_cmd(i32, i8*, i8**, i32*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_internal_style(i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
