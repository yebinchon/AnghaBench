; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_getdate.c_svn_ra_serf__get_dated_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_getdate.c_svn_ra_serf__get_dated_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32*, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i8*, %struct.TYPE_11__, %struct.TYPE_14__*, i32 }
%struct.TYPE_11__ = type { i32 }

@date_ttable = common dso_local global i32 0, align 4
@date_closed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@create_getdate_body = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_ERR_RA_DAV_PROPS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"The REPORT response did not include the requested properties\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__get_dated_revision(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call %struct.TYPE_14__* @apr_palloc(i32* %18, i32 16)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @svn_ra_serf__report_resource(i8** %14, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32, i32* @date_ttable, align 4
  %31 = load i32, i32* @date_closed, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @svn_ra_serf__xml_context_create(i32 %30, i32* null, i32 %31, i32* null, %struct.TYPE_14__* %32, i32* %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call %struct.TYPE_13__* @svn_ra_serf__create_expat_handler(i32* %35, i32* %36, i32* null, i32* %37)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %12, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %45, align 8
  %46 = load i32, i32* @create_getdate_body, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 4
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %51, align 8
  %52 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_13__* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 200
  br i1 %64, label %65, label %69

65:                                               ; preds = %4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %67 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_13__* %66)
  %68 = call i32* @svn_error_trace(i32 %67)
  store i32* %68, i32** %5, align 8
  br label %80

69:                                               ; preds = %4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SVN_IS_VALID_REVNUM(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @SVN_ERR_RA_DAV_PROPS_NOT_FOUND, align 4
  %76 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32* @svn_error_create(i32 %75, i32* null, i32 %76)
  store i32* %77, i32** %5, align 8
  br label %80

78:                                               ; preds = %69
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %79, i32** %5, align 8
  br label %80

80:                                               ; preds = %78, %74, %65
  %81 = load i32*, i32** %5, align 8
  ret i32* %81
}

declare dso_local %struct.TYPE_14__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__report_resource(i8**, i32*, i32*) #1

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32*, i32, i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_ra_serf__create_expat_handler(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_13__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_13__*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
