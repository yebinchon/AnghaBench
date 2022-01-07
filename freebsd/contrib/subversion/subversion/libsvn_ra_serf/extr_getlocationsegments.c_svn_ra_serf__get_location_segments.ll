; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_getlocationsegments.c_svn_ra_serf__get_location_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_getlocationsegments.c_svn_ra_serf__get_location_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_23__ = type { i8*, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_21__ = type { i8*, i8*, i8*, %struct.TYPE_19__, %struct.TYPE_23__*, i32 }
%struct.TYPE_19__ = type { i32 }

@gls_ttable = common dso_local global i32 0, align 4
@gls_closed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@create_gls_body = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i64 0, align 8
@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @svn_ra_serf__get_location_segments(%struct.TYPE_20__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %19, align 8
  %27 = load i32*, i32** %17, align 8
  %28 = call %struct.TYPE_23__* @apr_pcalloc(i32* %27, i32 48)
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %18, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = call i32 @svn_ra_serf__get_stable_url(i8** %22, i32* null, i32* %47, i32* null, i8* %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32, i32* @gls_ttable, align 4
  %54 = load i32, i32* @gls_closed, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = call i32* @svn_ra_serf__xml_context_create(i32 %53, i32* null, i32 %54, i32* null, %struct.TYPE_23__* %55, i32* %56)
  store i32* %57, i32** %21, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = load i32*, i32** %21, align 8
  %60 = load i32*, i32** %17, align 8
  %61 = call %struct.TYPE_21__* @svn_ra_serf__create_expat_handler(i32* %58, i32* %59, i32* null, i32* %60)
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %20, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %63, align 8
  %64 = load i8*, i8** %22, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @create_gls_body, align 4
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 4
  store %struct.TYPE_23__* %70, %struct.TYPE_23__** %72, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %74, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = call %struct.TYPE_22__* @svn_ra_serf__context_run_one(%struct.TYPE_21__* %75, i32* %76)
  store %struct.TYPE_22__* %77, %struct.TYPE_22__** %23, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %79 = icmp ne %struct.TYPE_22__* %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 200
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %88 = call %struct.TYPE_22__* @svn_ra_serf__unexpected_status(%struct.TYPE_21__* %87)
  store %struct.TYPE_22__* %88, %struct.TYPE_22__** %23, align 8
  br label %89

89:                                               ; preds = %86, %80, %8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %91 = icmp ne %struct.TYPE_22__* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SVN_ERR_UNSUPPORTED_FEATURE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32, i32* @SVN_ERR_RA_NOT_IMPLEMENTED, align 4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %101 = call %struct.TYPE_22__* @svn_error_create(i32 %99, %struct.TYPE_22__* %100, i32* null)
  store %struct.TYPE_22__* %101, %struct.TYPE_22__** %9, align 8
  br label %105

102:                                              ; preds = %92, %89
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %104 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %103)
  store %struct.TYPE_22__* %104, %struct.TYPE_22__** %9, align 8
  br label %105

105:                                              ; preds = %102, %98
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  ret %struct.TYPE_22__* %106
}

declare dso_local %struct.TYPE_23__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__get_stable_url(i8**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32*, i32, i32*, %struct.TYPE_23__*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_ra_serf__create_expat_handler(i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_ra_serf__context_run_one(%struct.TYPE_21__*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_ra_serf__unexpected_status(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @svn_error_create(i32, %struct.TYPE_22__*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
