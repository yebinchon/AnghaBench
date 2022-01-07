; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_mergeinfo.c_svn_ra_serf__get_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_mergeinfo.c_svn_ra_serf__get_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32*, i32, i32, i32, i32*, i32* }
%struct.TYPE_13__ = type { i8*, i8*, i8*, %struct.TYPE_11__, %struct.TYPE_14__*, i32 }
%struct.TYPE_11__ = type { i32 }

@mergeinfo_ttable = common dso_local global i32 0, align 4
@mergeinfo_closed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@create_mergeinfo_body = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__get_mergeinfo(%struct.TYPE_12__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %16, align 8
  %23 = load i32**, i32*** %9, align 8
  store i32* null, i32** %23, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 @svn_ra_serf__get_stable_url(i8** %19, i32* null, i32* %24, i32* null, i32 %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %14, align 8
  %31 = call %struct.TYPE_14__* @apr_pcalloc(i32* %30, i32 40)
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %15, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 5
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i32* @apr_hash_make(i32* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @mergeinfo_ttable, align 4
  %52 = load i32, i32* @mergeinfo_closed, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = call i32* @svn_ra_serf__xml_context_create(i32 %51, i32* null, i32 %52, i32* null, %struct.TYPE_14__* %53, i32* %54)
  store i32* %55, i32** %18, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = call %struct.TYPE_13__* @svn_ra_serf__create_expat_handler(i32* %56, i32* %57, i32* null, i32* %58)
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %17, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %61, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @create_mergeinfo_body, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 4
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %70, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_13__* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 200
  br i1 %81, label %82, label %86

82:                                               ; preds = %7
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %84 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_13__* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %82, %7
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @apr_hash_count(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32**, i32*** %9, align 8
  store i32* %95, i32** %96, align 8
  br label %97

97:                                               ; preds = %92, %86
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %98
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__get_stable_url(i8**, i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32*, i32, i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_ra_serf__create_expat_handler(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_13__*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
