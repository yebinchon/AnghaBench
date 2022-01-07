; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_run_hook_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_run_hook_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@SVN_NULL_DEVICE_NAME = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Can't create null stdout for hook '%s'\00", align 1
@SVN_REPOS__HOOKS_ENV_DEFAULT_SECTION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_REPOS_BAD_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to start '%s' hook\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Error closing null file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i8*, i8**, i32*, i32*, i32*)* @run_hook_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @run_hook_cmd(i32** %0, i8* %1, i8* %2, i8** %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_4__, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32** %0, i32*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = bitcast %struct.TYPE_4__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 12, i1 false)
  store i32* null, i32** %21, align 8
  %24 = load i32**, i32*** %9, align 8
  %25 = icmp ne i32** %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store i32* null, i32** %16, align 8
  br label %41

27:                                               ; preds = %7
  %28 = load i32, i32* @SVN_NULL_DEVICE_NAME, align 4
  %29 = load i32, i32* @APR_WRITE, align 4
  %30 = load i32, i32* @APR_OS_DEFAULT, align 4
  %31 = load i32*, i32** %15, align 8
  %32 = call i64 @apr_file_open(i32** %16, i32 %28, i32 %29, i32 %30, i32* %31)
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i64, i64* %17, align 8
  %37 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %38 = load i8*, i8** %11, align 8
  %39 = call i32* (i64, i32, ...) @svn_error_wrap_apr(i64 %36, i32 %37, i8* %38)
  store i32* %39, i32** %8, align 8
  br label %128

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32*, i32** %15, align 8
  %43 = call i32* @svn_pool_create(i32* %42)
  store i32* %43, i32** %20, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i32*, i32** %13, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32* @svn_hash_gets(i32* %47, i8* %48)
  store i32* %49, i32** %21, align 8
  %50 = load i32*, i32** %21, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32*, i32** %13, align 8
  %54 = load i8*, i8** @SVN_REPOS__HOOKS_ENV_DEFAULT_SECTION, align 8
  %55 = call i32* @svn_hash_gets(i32* %53, i8* %54)
  store i32* %55, i32** %21, align 8
  br label %56

56:                                               ; preds = %52, %46
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i8*, i8** %11, align 8
  %59 = load i8**, i8*** %12, align 8
  %60 = load i32*, i32** %21, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @env_from_env_hash(i32* %60, i32* %61, i32* %62)
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32, i32* @FALSE, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = load i32**, i32*** %9, align 8
  %68 = icmp ne i32** %67, null
  %69 = zext i1 %68 to i32
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* @TRUE, align 4
  %72 = load i32*, i32** %20, align 8
  %73 = call i32* @svn_io_start_cmd3(%struct.TYPE_4__* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8** %59, i32 %63, i32 %64, i32 %65, i32* %66, i32 %69, i32* %70, i32 %71, i32* null, i32* %72)
  store i32* %73, i32** %18, align 8
  %74 = load i32*, i32** %18, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %57
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %15, align 8
  %82 = call i32* @check_hook_result(i8* %77, i8* %78, %struct.TYPE_4__* %19, i32 %80, i32* %81)
  store i32* %82, i32** %18, align 8
  br label %89

83:                                               ; preds = %57
  %84 = load i32, i32* @SVN_ERR_REPOS_BAD_ARGS, align 4
  %85 = load i32*, i32** %18, align 8
  %86 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i8*, i8** %11, align 8
  %88 = call i32* @svn_error_createf(i32 %84, i32* %85, i32 %86, i8* %87)
  store i32* %88, i32** %18, align 8
  br label %89

89:                                               ; preds = %83, %76
  %90 = load i32*, i32** %18, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %107, label %92

92:                                               ; preds = %89
  %93 = load i32**, i32*** %9, align 8
  %94 = icmp ne i32** %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %15, align 8
  %99 = call i32* @svn_stringbuf_from_aprfile(i32** %22, i32 %97, i32* %98)
  store i32* %99, i32** %18, align 8
  %100 = load i32*, i32** %18, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %95
  %103 = load i32*, i32** %22, align 8
  %104 = call i32* @svn_stringbuf__morph_into_string(i32* %103)
  %105 = load i32**, i32*** %9, align 8
  store i32* %104, i32** %105, align 8
  br label %106

106:                                              ; preds = %102, %95
  br label %107

107:                                              ; preds = %106, %92, %89
  %108 = load i32*, i32** %20, align 8
  %109 = call i32 @svn_pool_destroy(i32* %108)
  %110 = load i32*, i32** %16, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %125

112:                                              ; preds = %107
  %113 = load i32*, i32** %16, align 8
  %114 = call i64 @apr_file_close(i32* %113)
  store i64 %114, i64* %17, align 8
  %115 = load i32*, i32** %18, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = load i64, i64* %17, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i64, i64* %17, align 8
  %122 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %123 = call i32* (i64, i32, ...) @svn_error_wrap_apr(i64 %121, i32 %122)
  store i32* %123, i32** %8, align 8
  br label %128

124:                                              ; preds = %117, %112
  br label %125

125:                                              ; preds = %124, %107
  %126 = load i32*, i32** %18, align 8
  %127 = call i32* @svn_error_trace(i32* %126)
  store i32* %127, i32** %8, align 8
  br label %128

128:                                              ; preds = %125, %120, %35
  %129 = load i32*, i32** %8, align 8
  ret i32* %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @apr_file_open(i32**, i32, i32, i32, i32*) #2

declare dso_local i32* @svn_error_wrap_apr(i64, i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32* @svn_pool_create(i32*) #2

declare dso_local i32* @svn_hash_gets(i32*, i8*) #2

declare dso_local i32* @svn_io_start_cmd3(%struct.TYPE_4__*, i8*, i8*, i8**, i32, i32, i32, i32*, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @env_from_env_hash(i32*, i32*, i32*) #2

declare dso_local i32* @check_hook_result(i8*, i8*, %struct.TYPE_4__*, i32, i32*) #2

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #2

declare dso_local i32* @svn_stringbuf_from_aprfile(i32**, i32, i32*) #2

declare dso_local i32* @svn_stringbuf__morph_into_string(i32*) #2

declare dso_local i32 @svn_pool_destroy(i32*) #2

declare dso_local i64 @apr_file_close(i32*) #2

declare dso_local i32* @svn_error_trace(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
