; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_svn_ra_serf__stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_svn_ra_serf__stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_25__ = type { i32 }
%struct.fill_dirent_baton_t = type { i64*, %struct.TYPE_25__*, i32* }

@svn_tristate_unknown = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SVN_DIRENT_ALL = common dso_local global i32 0, align 4
@fill_dirent_propfunc = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_24__* null, align 8
@svn_tristate_false = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @svn_ra_serf__stat(%struct.TYPE_22__* %0, i8* %1, i32 %2, %struct.TYPE_25__** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.fill_dirent_baton_t, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_25__** %3, %struct.TYPE_25__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %12, align 8
  %21 = load i64, i64* @svn_tristate_unknown, align 8
  store i64 %21, i64* %15, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %17, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load i8*, i8** %17, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i8* @svn_path_url_add_component2(i8* %29, i8* %30, i32* %31)
  store i8* %32, i8** %17, align 8
  br label %33

33:                                               ; preds = %28, %5
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @SVN_IS_VALID_REVNUM(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call %struct.TYPE_24__* @svn_ra_serf__get_stable_url(i8** %17, i32* null, %struct.TYPE_23__* %38, i8* %39, i32 %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(%struct.TYPE_24__* %43)
  br label %45

45:                                               ; preds = %37, %33
  %46 = load i32*, i32** %11, align 8
  %47 = call %struct.TYPE_25__* @svn_dirent_create(i32* %46)
  %48 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %14, i32 0, i32 1
  store %struct.TYPE_25__* %47, %struct.TYPE_25__** %48, align 8
  %49 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %14, i32 0, i32 0
  store i64* %15, i64** %49, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %14, i32 0, i32 2
  store i32* %50, i32** %51, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %55 = load i32, i32* @SVN_DIRENT_ALL, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @get_dirent_props(i32 %55, %struct.TYPE_23__* %56, i32* %57)
  %59 = load i32, i32* @fill_dirent_propfunc, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = call %struct.TYPE_24__* @svn_ra_serf__create_propfind_handler(i32** %16, %struct.TYPE_23__* %52, i8* %53, i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, %struct.fill_dirent_baton_t* %14, i32* %60)
  %62 = call i32 @SVN_ERR(%struct.TYPE_24__* %61)
  %63 = load i32*, i32** %16, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call %struct.TYPE_24__* @svn_ra_serf__context_run_one(i32* %63, i32* %64)
  store %struct.TYPE_24__* %65, %struct.TYPE_24__** %13, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %67 = icmp ne %struct.TYPE_24__* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %45
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %76 = call i32 @svn_error_clear(%struct.TYPE_24__* %75)
  %77 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %10, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %77, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_24__* %78, %struct.TYPE_24__** %6, align 8
  br label %119

79:                                               ; preds = %68
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %81 = call %struct.TYPE_24__* @svn_error_trace(%struct.TYPE_24__* %80)
  store %struct.TYPE_24__* %81, %struct.TYPE_24__** %6, align 8
  br label %119

82:                                               ; preds = %45
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* @svn_tristate_false, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %82
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @svn_tristate_unknown, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %14, i32 0, i32 1
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %92
  %99 = load i64, i64* @svn_tristate_false, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call %struct.TYPE_24__* @svn_ra_serf__context_run_one(i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(%struct.TYPE_24__* %104)
  br label %106

106:                                              ; preds = %98, %92, %86, %82
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* @svn_tristate_unknown, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i64, i64* %15, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %106
  %115 = getelementptr inbounds %struct.fill_dirent_baton_t, %struct.fill_dirent_baton_t* %14, i32 0, i32 1
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %115, align 8
  %117 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %10, align 8
  store %struct.TYPE_25__* %116, %struct.TYPE_25__** %117, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_24__* %118, %struct.TYPE_24__** %6, align 8
  br label %119

119:                                              ; preds = %114, %79, %74
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  ret %struct.TYPE_24__* %120
}

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @svn_ra_serf__get_stable_url(i8**, i32*, %struct.TYPE_23__*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_25__* @svn_dirent_create(i32*) #1

declare dso_local %struct.TYPE_24__* @svn_ra_serf__create_propfind_handler(i32**, %struct.TYPE_23__*, i8*, i32, i8*, i32, i32, %struct.fill_dirent_baton_t*, i32*) #1

declare dso_local i32 @get_dirent_props(i32, %struct.TYPE_23__*, i32*) #1

declare dso_local %struct.TYPE_24__* @svn_ra_serf__context_run_one(i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @svn_error_trace(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
