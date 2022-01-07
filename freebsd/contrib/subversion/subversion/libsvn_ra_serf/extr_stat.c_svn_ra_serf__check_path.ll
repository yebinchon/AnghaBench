; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_svn_ra_serf__check_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_svn_ra_serf__check_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8* }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@check_path_props = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"resourcetype\00", align 1
@SVN_ERR_RA_DAV_PROPS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"The PROPFIND response did not include the requested resourcetype value\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"collection\00", align 1
@svn_node_dir = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @svn_ra_serf__check_path(%struct.TYPE_16__* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %12, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load i8*, i8** %15, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i8* @svn_path_url_add_component2(i8* %28, i8* %29, i32* %30)
  store i8* %31, i8** %15, align 8
  br label %32

32:                                               ; preds = %27, %5
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @SVN_IS_VALID_REVNUM(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call %struct.TYPE_18__* @svn_ra_serf__get_stable_url(i8** %15, i32* null, %struct.TYPE_17__* %37, i8* %38, i32 %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(%struct.TYPE_18__* %42)
  br label %44

44:                                               ; preds = %36, %32
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %48 = load i32, i32* @check_path_props, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call %struct.TYPE_18__* @svn_ra_serf__fetch_node_props(i32** %13, %struct.TYPE_17__* %45, i8* %46, i32 %47, i32 %48, i32* %49, i32* %50)
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %14, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %53 = icmp ne %struct.TYPE_18__* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %62 = call i32 @svn_error_clear(%struct.TYPE_18__* %61)
  %63 = load i32, i32* @svn_node_none, align 4
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  br label %89

65:                                               ; preds = %54, %44
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %67 = call i32 @SVN_ERR(%struct.TYPE_18__* %66)
  %68 = load i32*, i32** %13, align 8
  %69 = call i32* @apr_hash_get(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %69, i32** %16, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = call i8* @svn_prop_get_value(i32* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %71, i8** %17, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @SVN_ERR_RA_DAV_PROPS_NOT_FOUND, align 4
  %76 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %77 = call %struct.TYPE_18__* @svn_error_create(i32 %75, i32* null, i32 %76)
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %6, align 8
  br label %91

78:                                               ; preds = %65
  %79 = load i8*, i8** %17, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @svn_node_dir, align 4
  %84 = load i32*, i32** %10, align 8
  store i32 %83, i32* %84, align 4
  br label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @svn_node_file, align 4
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %60
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %6, align 8
  br label %91

91:                                               ; preds = %89, %74
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  ret %struct.TYPE_18__* %92
}

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @svn_ra_serf__get_stable_url(i8**, i32*, %struct.TYPE_17__*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_ra_serf__fetch_node_props(i32**, %struct.TYPE_17__*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_18__*) #1

declare dso_local i32* @apr_hash_get(i32*, i8*, i32) #1

declare dso_local i8* @svn_prop_get_value(i32*, i8*) #1

declare dso_local %struct.TYPE_18__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
