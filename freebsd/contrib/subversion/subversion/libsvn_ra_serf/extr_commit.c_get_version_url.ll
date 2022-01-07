; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_get_version_url.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_get_version_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i32 (i32, i8*, i32, %struct.TYPE_11__**, i32*)* }
%struct.TYPE_11__ = type { i8* }

@SVN_RA_SERF__WC_CHECKED_IN_URL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"checked-in\00", align 1
@SVN_ERR_RA_DAV_REQUEST_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Path '%s' not present\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_12__*, i8*, i32, i8*, i32*, i32*)* @get_version_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_version_url(i8** %0, %struct.TYPE_12__* %1, i8* %2, i32 %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i8*, align 8
  store i8** %0, i8*** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32 (i32, i8*, i32, %struct.TYPE_11__**, i32*)*, i32 (i32, i8*, i32, %struct.TYPE_11__**, i32*)** %22, align 8
  %24 = icmp ne i32 (i32, i8*, i32, %struct.TYPE_11__**, i32*)* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %7
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32 (i32, i8*, i32, %struct.TYPE_11__**, i32*)*, i32 (i32, i8*, i32, %struct.TYPE_11__**, i32*)** %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* @SVN_RA_SERF__WC_CHECKED_IN_URL, align 4
  %36 = load i32*, i32** %15, align 8
  %37 = call i32 %30(i32 %33, i8* %34, i32 %35, %struct.TYPE_11__** %17, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %25
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i8* @svn_urlpath__canonicalize(i8* %44, i32* %45)
  %47 = load i8**, i8*** %9, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %48, i32** %8, align 8
  br label %100

49:                                               ; preds = %25
  br label %50

50:                                               ; preds = %49, %7
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i8*, i8** %13, align 8
  store i8* %54, i8** %16, align 8
  br label %93

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @SVN_IS_VALID_REVNUM(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @svn_ra_serf__get_stable_url(i8** %18, i32* null, %struct.TYPE_12__* %60, i32* null, i32 %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %71

66:                                               ; preds = %55
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %18, align 8
  br label %71

71:                                               ; preds = %66, %59
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %15, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @svn_ra_serf__fetch_dav_prop(i8** %16, %struct.TYPE_12__* %72, i8* %73, i32 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i8*, i8** %16, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* @SVN_ERR_RA_DAV_REQUEST_FAILED, align 4
  %83 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32* @svn_error_createf(i32 %82, i32* null, i32 %83, i8* %87)
  store i32* %88, i32** %8, align 8
  br label %100

89:                                               ; preds = %71
  %90 = load i8*, i8** %16, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = call i8* @svn_urlpath__canonicalize(i8* %90, i32* %91)
  store i8* %92, i8** %16, align 8
  br label %93

93:                                               ; preds = %89, %53
  %94 = load i8*, i8** %16, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = call i8* @svn_path_url_add_component2(i8* %94, i8* %95, i32* %96)
  %98 = load i8**, i8*** %9, align 8
  store i8* %97, i8** %98, align 8
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %99, i32** %8, align 8
  br label %100

100:                                              ; preds = %93, %81, %41
  %101 = load i32*, i32** %8, align 8
  ret i32* %101
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i8* @svn_urlpath__canonicalize(i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_ra_serf__get_stable_url(i8**, i32*, %struct.TYPE_12__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__fetch_dav_prop(i8**, %struct.TYPE_12__*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
