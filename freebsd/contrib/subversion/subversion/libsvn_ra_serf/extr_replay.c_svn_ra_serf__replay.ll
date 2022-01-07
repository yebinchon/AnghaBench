; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_svn_ra_serf__replay.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_replay.c_svn_ra_serf__replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.revision_report_t = type { i32, i32, i8*, i8*, i32, i8*, i32*, i32, i32* }
%struct.TYPE_16__ = type { i8*, i8*, %struct.TYPE_13__, %struct.revision_report_t*, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@replay_ttable = common dso_local global i32 0, align 4
@replay_opened = common dso_local global i32 0, align 4
@replay_closed = common dso_local global i32 0, align 4
@replay_cdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@create_replay_body = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__replay(%struct.TYPE_14__* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.revision_report_t, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = bitcast %struct.revision_report_t* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 64, i1 false)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %16, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = call i32 @svn_ra_serf__report_resource(i8** %19, %struct.TYPE_15__* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %14, align 8
  %29 = call i32 @svn_pool_create(i32* %28)
  %30 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %15, i32 0, i32 7
  store i32 %29, i32* %30, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %15, i32 0, i32 6
  store i32* %31, i32** %32, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %15, i32 0, i32 5
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %15, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %15, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %15, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %15, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @apr_hash_make(i32* %43)
  %45 = getelementptr inbounds %struct.revision_report_t, %struct.revision_report_t* %15, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* @replay_ttable, align 4
  %47 = load i32, i32* @replay_opened, align 4
  %48 = load i32, i32* @replay_closed, align 4
  %49 = load i32, i32* @replay_cdata, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = call i32* @svn_ra_serf__xml_context_create(i32 %46, i32 %47, i32 %48, i32 %49, %struct.revision_report_t* %15, i32* %50)
  store i32* %51, i32** %18, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = call %struct.TYPE_16__* @svn_ra_serf__create_expat_handler(%struct.TYPE_15__* %52, i32* %53, i32* null, i32* %54)
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %17, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @create_replay_body, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 3
  store %struct.revision_report_t* %15, %struct.revision_report_t** %68, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_16__* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 200
  br i1 %79, label %80, label %84

80:                                               ; preds = %7
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %82 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_16__* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  br label %84

84:                                               ; preds = %80, %7
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_ra_serf__report_resource(i8**, %struct.TYPE_15__*, i32*) #2

declare dso_local i32 @svn_pool_create(i32*) #2

declare dso_local i32 @apr_hash_make(i32*) #2

declare dso_local i32* @svn_ra_serf__xml_context_create(i32, i32, i32, i32, %struct.revision_report_t*, i32*) #2

declare dso_local %struct.TYPE_16__* @svn_ra_serf__create_expat_handler(%struct.TYPE_15__*, i32*, i32*, i32*) #2

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
