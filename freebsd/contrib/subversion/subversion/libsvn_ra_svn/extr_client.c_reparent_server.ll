; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_reparent_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_reparent_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32*, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_17__* null, align 8
@SVN_ERR_RA_SVN_UNKNOWN_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_16__*, i8*, i32*)* @reparent_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @reparent_server(%struct.TYPE_16__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %8, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %9, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @svn_ra_svn__write_cmd_reparent(i32* %24, i32* %25, i8* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call %struct.TYPE_17__* @handle_auth_request(%struct.TYPE_14__* %29, i32* %30)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %11, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %33 = icmp ne %struct.TYPE_17__* %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %3
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @svn_ra_svn__read_cmd_response(i32* %35, i32* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @svn_stringbuf_set(i32 %41, i8* %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %4, align 8
  br label %105

45:                                               ; preds = %3
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SVN_ERR_RA_SVN_UNKNOWN_CMD, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %4, align 8
  br label %105

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %56 = call i32 @svn_error_clear(%struct.TYPE_17__* %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32* @svn_pool_create(i32 %59)
  store i32* %60, i32** %12, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call %struct.TYPE_17__* @parse_url(i8* %61, i32* %14, i32* %62)
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %11, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %65 = icmp ne %struct.TYPE_17__* %64, null
  br i1 %65, label %89, label %66

66:                                               ; preds = %54
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = call %struct.TYPE_17__* @open_session(%struct.TYPE_14__** %13, i8* %67, i32* %14, i32 %70, i32 %73, i32 %76, i32 %79, i32 %82, i32 %85, i32* %86, i32* %87)
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** %11, align 8
  br label %89

89:                                               ; preds = %66, %54
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %91 = icmp ne %struct.TYPE_17__* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @svn_pool_destroy(i32* %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %95, %struct.TYPE_17__** %4, align 8
  br label %105

96:                                               ; preds = %89
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store %struct.TYPE_14__* %97, %struct.TYPE_14__** %99, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @svn_pool_destroy(i32* %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_17__* %104, %struct.TYPE_17__** %4, align 8
  br label %105

105:                                              ; preds = %96, %92, %51, %34
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %106
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_svn__write_cmd_reparent(i32*, i32*, i8*) #1

declare dso_local %struct.TYPE_17__* @handle_auth_request(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_ra_svn__read_cmd_response(i32*, i32*, i8*) #1

declare dso_local i32 @svn_stringbuf_set(i32, i8*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_17__*) #1

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local %struct.TYPE_17__* @parse_url(i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @open_session(%struct.TYPE_14__**, i8*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
