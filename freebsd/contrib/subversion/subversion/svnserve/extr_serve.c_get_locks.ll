; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_locks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__* }

@.str = private unnamed_addr constant [7 x i8] c"c?(?w)\00", align 1
@svn_depth_infinity = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid 'depth' specified in get-locks request\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"get-locks %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"w((!\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"!))\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*)* @get_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_locks(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_13__, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %10, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i32* %24, i32** %25, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @svn_ra_svn__parse_tuple(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %11, i8** %13)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i8*, i8** %13, align 8
  %33 = call i64 @svn_depth_from_word(i8* %32)
  br label %36

34:                                               ; preds = %4
  %35 = load i64, i64* @svn_depth_infinity, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i64 [ %33, %31 ], [ %35, %34 ]
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @svn_depth_empty, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* @svn_depth_files, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* @svn_depth_immediates, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @svn_depth_infinity, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %55 = call i32* @svn_error_create(i32 %54, i32* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32* %55, i32** %17, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32* @log_fail_and_flush(i32* %56, %struct.TYPE_12__* %57, i32* %58, i32* %59)
  store i32* %60, i32** %5, align 8
  br label %126

61:                                               ; preds = %49, %45, %41, %36
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @svn_relpath_canonicalize(i8* %69, i32* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i8* @svn_fspath__join(i32 %68, i32 %71, i32* %72)
  store i8* %73, i8** %12, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = call i32 @trivial_auth_request(i32* %74, i32* %75, %struct.TYPE_12__* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @svn_path_uri_encode(i8* %82, i32* %83)
  %85 = call i32 @log_command(%struct.TYPE_12__* %79, i32* %80, i32* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %95 = call i32 @authz_check_access_cb_func(%struct.TYPE_12__* %94)
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @svn_repos_fs_get_locks2(i32** %15, i32 %91, i8* %92, i64 %93, i32 %95, %struct.TYPE_13__* %18, i32* %96)
  %98 = call i32 @SVN_CMD_ERR(i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %99, i32* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = call i32* @apr_hash_first(i32* %103, i32* %104)
  store i32* %105, i32** %16, align 8
  br label %106

106:                                              ; preds = %117, %61
  %107 = load i32*, i32** %16, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i32*, i32** %16, align 8
  %111 = call i32* @apr_hash_this_val(i32* %110)
  store i32* %111, i32** %19, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** %19, align 8
  %115 = call i32 @write_lock(i32* %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  br label %117

117:                                              ; preds = %109
  %118 = load i32*, i32** %16, align 8
  %119 = call i32* @apr_hash_next(i32* %118)
  store i32* %119, i32** %16, align 8
  br label %106

120:                                              ; preds = %106
  %121 = load i32*, i32** %6, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 (i32*, i32*, i8*, ...) @svn_ra_svn__write_tuple(i32* %121, i32* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %124 = call i32 @SVN_ERR(i32 %123)
  %125 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %125, i32** %5, align 8
  br label %126

126:                                              ; preds = %120, %53
  %127 = load i32*, i32** %5, align 8
  ret i32* %127
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i8**) #1

declare dso_local i64 @svn_depth_from_word(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i8*) #1

declare dso_local i32* @log_fail_and_flush(i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i8* @svn_fspath__join(i32, i32, i32*) #1

declare dso_local i32 @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i32 @trivial_auth_request(i32*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @log_command(%struct.TYPE_12__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_path_uri_encode(i8*, i32*) #1

declare dso_local i32 @SVN_CMD_ERR(i32) #1

declare dso_local i32 @svn_repos_fs_get_locks2(i32**, i32, i8*, i64, i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @authz_check_access_cb_func(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_ra_svn__write_tuple(i32*, i32*, i8*, ...) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @write_lock(i32*, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
