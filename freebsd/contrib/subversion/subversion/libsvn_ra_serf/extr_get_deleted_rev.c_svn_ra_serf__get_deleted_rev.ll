; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_deleted_rev.c_svn_ra_serf__get_deleted_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_deleted_rev.c_svn_ra_serf__get_deleted_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i8*, i8**, i8*, i8* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, %struct.TYPE_10__, %struct.TYPE_13__*, i32 }
%struct.TYPE_10__ = type { i32 }

@getdrev_ttable = common dso_local global i32 0, align 4
@getdrev_closed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@create_getdrev_body = common dso_local global i32 0, align 4
@SVN_ERR_RA_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"'%s' REPORT not implemented\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"get-deleted-rev\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__get_deleted_rev(%struct.TYPE_11__* %0, i8* %1, i8* %2, i8* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %15, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call %struct.TYPE_13__* @apr_pcalloc(i32* %23, i32 32)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %14, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i8**, i8*** %12, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  store i8** %34, i8*** %36, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32* @svn_ra_serf__get_stable_url(i8** %18, i32* null, i32* %37, i32* null, i8* %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32* %41)
  %43 = load i32, i32* @getdrev_ttable, align 4
  %44 = load i32, i32* @getdrev_closed, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32* @svn_ra_serf__xml_context_create(i32 %43, i32* null, i32 %44, i32* null, %struct.TYPE_13__* %45, i32* %46)
  store i32* %47, i32** %17, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call %struct.TYPE_12__* @svn_ra_serf__create_expat_handler(i32* %48, i32* %49, i32* null, i32* %50)
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %16, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %53, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %58, align 8
  %59 = load i32, i32* @create_getdrev_body, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 4
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = call i32* @svn_ra_serf__context_run_one(%struct.TYPE_12__* %65, i32* %66)
  store i32* %67, i32** %19, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 501
  br i1 %72, label %73, label %78

73:                                               ; preds = %6
  %74 = load i32, i32* @SVN_ERR_RA_NOT_IMPLEMENTED, align 4
  %75 = load i32*, i32** %19, align 8
  %76 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32* @svn_error_createf(i32 %74, i32* %75, i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32* %77, i32** %7, align 8
  br label %82

78:                                               ; preds = %6
  %79 = load i32*, i32** %19, align 8
  %80 = call i32 @SVN_ERR(i32* %79)
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %7, align 8
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32*, i32** %7, align 8
  ret i32* %83
}

declare dso_local %struct.TYPE_13__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_ra_serf__get_stable_url(i8**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32*, i32, i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_ra_serf__create_expat_handler(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_ra_serf__context_run_one(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
