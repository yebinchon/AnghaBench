; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_digest.c_serf__setup_request_digest_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_digest.c_serf__setup_request_digest_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, i32, i64 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_18__ = type { i8* }

@HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Proxy-Authorization\00", align 1
@APR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serf__setup_request_digest_auth(i64 %0, i32 %1, %struct.TYPE_15__* %2, %struct.TYPE_13__* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_18__, align 8
  store i64 %0, i64* %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %16, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @HOST, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %31 = call %struct.TYPE_16__* @serf__get_authn_info_for_server(%struct.TYPE_15__* %30)
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %17, align 8
  br label %35

32:                                               ; preds = %7
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %17, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %18, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %40 = icmp ne %struct.TYPE_17__* %39, null
  br i1 %40, label %41, label %98

41:                                               ; preds = %35
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %41
  %47 = load i8*, i8** %13, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i8*, i8** %14, align 8
  store i8* %51, i8** %21, align 8
  br label %65

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @apr_uri_parse(i32 %55, i8* %56, %struct.TYPE_18__* %22)
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %19, align 4
  store i32 %61, i32* %8, align 4
  br label %100

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %21, align 8
  br label %65

65:                                               ; preds = %62, %50
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @HOST, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %74 = load i8*, i8** %21, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @build_auth_header(i8** %20, %struct.TYPE_17__* %73, i8* %74, i8* %75, i32 %78)
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %19, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %65
  %83 = load i32, i32* %19, align 4
  store i32 %83, i32* %8, align 4
  br label %100

84:                                               ; preds = %65
  %85 = load i32*, i32** %15, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %20, align 8
  %90 = call i32 @serf_bucket_headers_setn(i32* %85, i8* %88, i8* %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %84, %41, %35
  %99 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %98, %82, %60
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_16__* @serf__get_authn_info_for_server(%struct.TYPE_15__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @apr_uri_parse(i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @build_auth_header(i8**, %struct.TYPE_17__*, i8*, i8*, i32) #1

declare dso_local i32 @serf_bucket_headers_setn(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
