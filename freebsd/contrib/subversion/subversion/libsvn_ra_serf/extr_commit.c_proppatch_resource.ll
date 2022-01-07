; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_proppatch_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_proppatch_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i8*, %struct.TYPE_14__, %struct.TYPE_15__*, i32, %struct.TYPE_17__*, i32, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"PROPPATCH\00", align 1
@setup_proppatch_headers = common dso_local global i32 0, align 4
@create_proppatch_body = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@svn_ra_serf__handle_multistatus_only = common dso_local global i32 0, align 4
@SVN_ERR_RA_DAV_REQUEST_FAILED = common dso_local global i64 0, align 8
@SVN_ERR_RA_DAV_PROPPATCH_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i32*, %struct.TYPE_17__*, i32*)* @proppatch_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @proppatch_resource(i32* %0, %struct.TYPE_17__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call %struct.TYPE_15__* @svn_ra_serf__create_handler(i32* %10, i32* %11)
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %7, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @setup_proppatch_headers, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 7
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %25, align 8
  %26 = load i32, i32* @create_proppatch_body, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 5
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* @svn_ra_serf__handle_multistatus_only, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 3
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %39, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call %struct.TYPE_16__* @svn_ra_serf__context_run_one(%struct.TYPE_15__* %40, i32* %41)
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %8, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %44 = icmp ne %struct.TYPE_16__* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %3
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 207
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = call %struct.TYPE_16__* @svn_ra_serf__unexpected_status(%struct.TYPE_15__* %52)
  %54 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %53)
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %8, align 8
  br label %55

55:                                               ; preds = %51, %45, %3
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = icmp ne %struct.TYPE_16__* %56, null
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SVN_ERR_RA_DAV_REQUEST_FAILED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %58
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %9, align 8
  br label %66

66:                                               ; preds = %77, %64
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %68 = icmp ne %struct.TYPE_16__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SVN_ERR_RA_DAV_REQUEST_FAILED, align 8
  %74 = icmp eq i64 %72, %73
  br label %75

75:                                               ; preds = %69, %66
  %76 = phi i1 [ false, %66 ], [ %74, %69 ]
  br i1 %76, label %77, label %84

77:                                               ; preds = %75
  %78 = load i64, i64* @SVN_ERR_RA_DAV_PROPPATCH_FAILED, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %9, align 8
  br label %66

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %58, %55
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %86)
  ret %struct.TYPE_16__* %87
}

declare dso_local %struct.TYPE_15__* @svn_ra_serf__create_handler(i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_ra_serf__context_run_one(%struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @svn_ra_serf__unexpected_status(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
