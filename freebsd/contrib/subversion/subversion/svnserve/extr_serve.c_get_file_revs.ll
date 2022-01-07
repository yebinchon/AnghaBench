; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_file_revs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_get_file_revs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_13__* }

@.str = private unnamed_addr constant [12 x i8] c"c(?r)(?r)?B\00", align 1
@SVN_RA_SVN_UNSPECIFIED_NUMBER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@file_rev_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*)* @get_file_revs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_file_revs(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_15__, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i32* %25, i32** %26, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @svn_ra_svn__parse_tuple(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %16, i32* %14, i32* %15, i64* %18)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i8*, i8** %16, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @svn_relpath_canonicalize(i8* %30, i32* %31)
  store i8* %32, i8** %16, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %36 = call i32 @trivial_auth_request(i32* %33, i32* %34, %struct.TYPE_13__* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %16, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @svn_fspath__join(i32 %44, i8* %45, i32* %46)
  store i8* %47, i8** %17, align 8
  %48 = load i64, i64* %18, align 8
  %49 = load i64, i64* @SVN_RA_SVN_UNSPECIFIED_NUMBER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %4
  %52 = load i64, i64* @FALSE, align 8
  store i64 %52, i64* %19, align 8
  br label %55

53:                                               ; preds = %4
  %54 = load i64, i64* %18, align 8
  store i64 %54, i64* %19, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i64, i64* %19, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @svn_log__get_file_revs(i8* %59, i32 %60, i32 %61, i64 %62, i32* %63)
  %65 = call i32 @log_command(%struct.TYPE_13__* %56, i32* %57, i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32* %67, i32** %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i64, i64* %19, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = call i32 @authz_check_access_cb_func(%struct.TYPE_13__* %79)
  %81 = load i32, i32* @file_rev_handler, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i32* @svn_repos_get_file_revs2(i32 %74, i8* %75, i32 %76, i32 %77, i64 %78, i32 %80, %struct.TYPE_15__* %20, i32 %81, %struct.TYPE_14__* %13, i32* %82)
  store i32* %83, i32** %11, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i32* @svn_ra_svn__write_word(i32* %84, i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %86, i32** %12, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %55
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @svn_error_clear(i32* %90)
  %92 = load i32*, i32** %12, align 8
  store i32* %92, i32** %5, align 8
  br label %101

93:                                               ; preds = %55
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @SVN_CMD_ERR(i32* %94)
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @svn_ra_svn__write_cmd_response(i32* %96, i32* %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %100, i32** %5, align 8
  br label %101

101:                                              ; preds = %93, %89
  %102 = load i32*, i32** %5, align 8
  ret i32* %102
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__parse_tuple(i32*, i8*, i8**, i32*, i32*, i64*) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i32 @trivial_auth_request(i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i8* @svn_fspath__join(i32, i8*, i32*) #1

declare dso_local i32 @log_command(%struct.TYPE_13__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_log__get_file_revs(i8*, i32, i32, i64, i32*) #1

declare dso_local i32* @svn_repos_get_file_revs2(i32, i8*, i32, i32, i64, i32, %struct.TYPE_15__*, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @authz_check_access_cb_func(%struct.TYPE_13__*) #1

declare dso_local i32* @svn_ra_svn__write_word(i32*, i32*, i8*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32 @SVN_CMD_ERR(i32*) #1

declare dso_local i32 @svn_ra_svn__write_cmd_response(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
