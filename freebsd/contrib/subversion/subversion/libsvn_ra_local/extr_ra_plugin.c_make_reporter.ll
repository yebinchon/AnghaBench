; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_make_reporter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_make_reporter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"'%s'\0Ais not the same repository as\0A'%s'\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@ra_local_reporter = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i32**, i8**, i32, i8*, i8*, i32, i32, i32, i32, i32*, i8*, i32*, i32*)* @make_reporter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_reporter(%struct.TYPE_10__* %0, i32** %1, i8** %2, i32 %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i8* %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_11__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %16, align 8
  store i32** %1, i32*** %17, align 8
  store i8** %2, i8*** %18, align 8
  store i32 %3, i32* %19, align 4
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32* %10, i32** %26, align 8
  store i8* %11, i8** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %30, align 8
  store i8* null, i8** %32, align 8
  %37 = load i32, i32* %19, align 4
  %38 = call i32 @SVN_IS_VALID_REVNUM(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %14
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %29, align 8
  %45 = call i32 @svn_fs_youngest_rev(i32* %19, i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %40, %14
  %48 = load i8*, i8** %21, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %21, align 8
  %55 = load i32*, i32** %29, align 8
  %56 = call i8* @svn_uri_skip_ancestor(i32 %53, i8* %54, i32* %55)
  store i8* %56, i8** %33, align 8
  %57 = load i8*, i8** %33, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @SVN_ERR_RA_ILLEGAL_URL, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %21, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32* @svn_error_createf(i32 %60, i32* null, i32 %61, i8* %62, i32 %65)
  store i32* %66, i32** %15, align 8
  br label %123

67:                                               ; preds = %50
  %68 = load i32*, i32** %29, align 8
  %69 = load i8*, i8** %33, align 8
  %70 = load i32, i32* @SVN_VA_NULL, align 4
  %71 = call i8* @apr_pstrcat(i32* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %69, i32 %70)
  store i8* %71, i8** %32, align 8
  br label %72

72:                                               ; preds = %67, %47
  %73 = load i32**, i32*** %17, align 8
  store i32* @ra_local_reporter, i32** %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %75 = load i32*, i32** %29, align 8
  %76 = call i32 @get_username(%struct.TYPE_10__* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %82, label %96

82:                                               ; preds = %72
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %26, align 8
  %92 = load i8*, i8** %27, align 8
  %93 = load i32*, i32** %28, align 8
  %94 = call i32 @svn_delta_get_cancellation_editor(i32 %87, i32 %90, i32* %91, i8* %92, i32** %26, i8** %27, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  br label %96

96:                                               ; preds = %82, %72
  %97 = load i32, i32* %19, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %20, align 8
  %107 = load i8*, i8** %32, align 8
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %24, align 4
  %112 = load i32*, i32** %26, align 8
  %113 = load i8*, i8** %27, align 8
  %114 = load i32*, i32** %28, align 8
  %115 = call i32 @svn_repos_begin_report3(i8** %31, i32 %97, i32 %100, i32 %105, i8* %106, i8* %107, i32 %108, i32 %109, i32 %110, i32 %111, i32* %112, i8* %113, i32* null, i32* null, i32 0, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %118 = load i8*, i8** %31, align 8
  %119 = load i32*, i32** %28, align 8
  %120 = call i8* @make_reporter_baton(%struct.TYPE_11__* %117, i8* %118, i32* %119)
  %121 = load i8**, i8*** %18, align 8
  store i8* %120, i8** %121, align 8
  %122 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %122, i32** %15, align 8
  br label %123

123:                                              ; preds = %96, %59
  %124 = load i32*, i32** %15, align 8
  ret i32* %124
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i32*, i32, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i32, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i32 @get_username(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @svn_delta_get_cancellation_editor(i32, i32, i32*, i8*, i32**, i8**, i32*) #1

declare dso_local i32 @svn_repos_begin_report3(i8**, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32*, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i8* @make_reporter_baton(%struct.TYPE_11__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
