; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_getlocks.c_svn_ra_serf__get_locks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_getlocks.c_svn_ra_serf__get_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_32__ = type { i32*, i32, i32, i32* }
%struct.TYPE_30__ = type { i8*, i8*, i8*, %struct.TYPE_27__, %struct.TYPE_32__*, i32 }
%struct.TYPE_27__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@getlocks_ttable = common dso_local global i32 0, align 4
@getlocks_closed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@create_getlocks_body = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_31__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_31__* @svn_ra_serf__get_locks(%struct.TYPE_28__* %0, i32** %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  store %struct.TYPE_29__* %21, %struct.TYPE_29__** %13, align 8
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i8* @svn_path_url_add_component2(i32 %25, i8* %26, i32* %27)
  store i8* %28, i8** %16, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @svn_ra_serf__get_relative_path(i8** %17, i8* %29, %struct.TYPE_29__* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = call %struct.TYPE_32__* @apr_pcalloc(i32* %34, i32 24)
  store %struct.TYPE_32__* %35, %struct.TYPE_32__** %12, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = load i32, i32* @SVN_VA_NULL, align 4
  %42 = call i32 @apr_pstrcat(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32* @apr_hash_make(i32* %48)
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* @getlocks_ttable, align 4
  %53 = load i32, i32* @getlocks_closed, align 4
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32* @svn_ra_serf__xml_context_create(i32 %52, i32* null, i32 %53, i32* null, %struct.TYPE_32__* %54, i32* %55)
  store i32* %56, i32** %15, align 8
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call %struct.TYPE_30__* @svn_ra_serf__create_expat_handler(%struct.TYPE_29__* %57, i32* %58, i32* null, i32* %59)
  store %struct.TYPE_30__* %60, %struct.TYPE_30__** %14, align 8
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %62, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %67, align 8
  %68 = load i32, i32* @create_getlocks_body, align 4
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 4
  store %struct.TYPE_32__* %71, %struct.TYPE_32__** %73, align 8
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call %struct.TYPE_31__* @svn_ra_serf__context_run_one(%struct.TYPE_30__* %74, i32* %75)
  store %struct.TYPE_31__* %76, %struct.TYPE_31__** %18, align 8
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %78 = icmp ne %struct.TYPE_31__* %77, null
  br i1 %78, label %79, label %102

79:                                               ; preds = %5
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %81 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %82 = call i64 @svn_error_find_cause(%struct.TYPE_31__* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @SVN_ERR_RA_NOT_IMPLEMENTED, align 4
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %87 = call %struct.TYPE_31__* @svn_error_create(i32 %85, %struct.TYPE_31__* %86, i32* null)
  store %struct.TYPE_31__* %87, %struct.TYPE_31__** %6, align 8
  br label %124

88:                                               ; preds = %79
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %96 = call i32 @svn_error_clear(%struct.TYPE_31__* %95)
  br label %100

97:                                               ; preds = %88
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %99 = call %struct.TYPE_31__* @svn_error_trace(%struct.TYPE_31__* %98)
  store %struct.TYPE_31__* %99, %struct.TYPE_31__** %6, align 8
  br label %124

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %5
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 200
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 404
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %116 = call %struct.TYPE_31__* @svn_ra_serf__unexpected_status(%struct.TYPE_30__* %115)
  %117 = call %struct.TYPE_31__* @svn_error_trace(%struct.TYPE_31__* %116)
  store %struct.TYPE_31__* %117, %struct.TYPE_31__** %6, align 8
  br label %124

118:                                              ; preds = %108, %102
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32**, i32*** %8, align 8
  store i32* %121, i32** %122, align 8
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_31__* %123, %struct.TYPE_31__** %6, align 8
  br label %124

124:                                              ; preds = %118, %114, %97, %84
  %125 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  ret %struct.TYPE_31__* %125
}

declare dso_local i8* @svn_path_url_add_component2(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__get_relative_path(i8**, i8*, %struct.TYPE_29__*, i32*) #1

declare dso_local %struct.TYPE_32__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32*, i32, i32*, %struct.TYPE_32__*, i32*) #1

declare dso_local %struct.TYPE_30__* @svn_ra_serf__create_expat_handler(%struct.TYPE_29__*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_31__* @svn_ra_serf__context_run_one(%struct.TYPE_30__*, i32*) #1

declare dso_local i64 @svn_error_find_cause(%struct.TYPE_31__*, i32) #1

declare dso_local %struct.TYPE_31__* @svn_error_create(i32, %struct.TYPE_31__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @svn_error_trace(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @svn_ra_serf__unexpected_status(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
