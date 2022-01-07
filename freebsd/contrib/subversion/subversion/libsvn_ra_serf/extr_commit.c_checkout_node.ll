; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_checkout_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_checkout_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i32*, %struct.TYPE_10__, %struct.TYPE_11__*, i32, i8*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@create_checkout_body = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@svn_ra_serf__expect_empty_body = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"CHECKOUT\00", align 1
@SVN_ERR_RA_DAV_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"No Location header received\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Error parsing Location header value\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_12__*, i8*, i32*, i32*)* @checkout_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @checkout_node(i8** %0, %struct.TYPE_12__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__, align 4
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call %struct.TYPE_11__* @svn_ra_serf__create_handler(i32 %17, i32* %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %12, align 8
  %20 = load i32, i32* @create_checkout_body, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @svn_ra_serf__expect_empty_body, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 5
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_11__* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 201
  br i1 %50, label %51, label %55

51:                                               ; preds = %5
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %53 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_11__* %52)
  %54 = call i32* @svn_error_trace(i32 %53)
  store i32* %54, i32** %6, align 8
  br label %83

55:                                               ; preds = %5
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @SVN_ERR_RA_DAV_MALFORMED_DATA, align 4
  %62 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32* @svn_error_create(i32 %61, i32* null, i32 %62)
  store i32* %63, i32** %6, align 8
  br label %83

64:                                               ; preds = %55
  %65 = load i32*, i32** %11, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @apr_uri_parse(i32* %65, i32* %68, %struct.TYPE_13__* %14)
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* %13, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i32, i32* @SVN_ERR_RA_DAV_MALFORMED_DATA, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %75 = call i32* @svn_error_create(i32 %73, i32* null, i32 %74)
  store i32* %75, i32** %6, align 8
  br label %83

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = call i8* @svn_urlpath__canonicalize(i32 %78, i32* %79)
  %81 = load i8**, i8*** %7, align 8
  store i8* %80, i8** %81, align 8
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %76, %72, %60, %51
  %84 = load i32*, i32** %6, align 8
  ret i32* %84
}

declare dso_local %struct.TYPE_11__* @svn_ra_serf__create_handler(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_11__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_11__*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @apr_uri_parse(i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i8* @svn_urlpath__canonicalize(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
