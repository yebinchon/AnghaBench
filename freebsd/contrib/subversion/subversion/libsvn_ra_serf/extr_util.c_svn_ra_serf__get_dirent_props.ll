; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_svn_ra_serf__get_dirent_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_svn_ra_serf__get_dirent_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i8*, i8* }

@svn_tristate_false = common dso_local global i64 0, align 8
@SVN_DIRENT_HAS_PROPS = common dso_local global i32 0, align 4
@SVN_DIRENT_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"resourcetype\00", align 1
@SVN_DIRENT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"getcontentlength\00", align 1
@SVN_DAV_PROP_NS_DAV = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"deadprop-count\00", align 1
@SVN_DIRENT_CREATED_REV = common dso_local global i32 0, align 4
@SVN_DAV__VERSION_NAME = common dso_local global i8* null, align 8
@SVN_DIRENT_TIME = common dso_local global i32 0, align 4
@SVN_DAV__CREATIONDATE = common dso_local global i8* null, align 8
@SVN_DIRENT_LAST_AUTHOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"creator-displayname\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"allprop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__get_dirent_props(i32 %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32* @apr_array_make(i32* %10, i32 7, i32 16)
  store i32* %11, i32** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @svn_tristate_false, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SVN_DIRENT_HAS_PROPS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %98, label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SVN_DIRENT_KIND, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = call %struct.TYPE_6__* @apr_array_push(i32* %28)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %7, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  br label %34

34:                                               ; preds = %27, %22
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SVN_DIRENT_SIZE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = call %struct.TYPE_6__* @apr_array_push(i32* %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %7, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %45, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @SVN_DIRENT_HAS_PROPS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32*, i32** %8, align 8
  %53 = call %struct.TYPE_6__* @apr_array_push(i32* %52)
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %7, align 8
  %54 = load i8*, i8** @SVN_DAV_PROP_NS_DAV, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %58, align 8
  br label %59

59:                                               ; preds = %51, %46
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @SVN_DIRENT_CREATED_REV, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i32*, i32** %8, align 8
  %66 = call %struct.TYPE_6__* @apr_array_push(i32* %65)
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %9, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %68, align 8
  %69 = load i8*, i8** @SVN_DAV__VERSION_NAME, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %64, %59
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @SVN_DIRENT_TIME, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i32*, i32** %8, align 8
  %79 = call %struct.TYPE_6__* @apr_array_push(i32* %78)
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %7, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %81, align 8
  %82 = load i8*, i8** @SVN_DAV__CREATIONDATE, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %77, %72
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @SVN_DIRENT_LAST_AUTHOR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32*, i32** %8, align 8
  %92 = call %struct.TYPE_6__* @apr_array_push(i32* %91)
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %7, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %96, align 8
  br label %97

97:                                               ; preds = %90, %85
  br label %105

98:                                               ; preds = %17
  %99 = load i32*, i32** %8, align 8
  %100 = call %struct.TYPE_6__* @apr_array_push(i32* %99)
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %7, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %104, align 8
  br label %105

105:                                              ; preds = %98, %97
  %106 = load i32*, i32** %8, align 8
  ret i32* %106
}

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @apr_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
