; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_serf_connection_create2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_serf_connection_create2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i32, i32 }

@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_UNSPEC = common dso_local global i32 0, align 4
@APR_URI_UNP_OMITPATHINFO = common dso_local global i32 0, align 4
@APR_URI_UNP_OMITUSERINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serf_connection_create2(%struct.TYPE_13__** %0, %struct.TYPE_12__* %1, i8* %2, i64 %3, i32 %4, i8* %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca %struct.TYPE_13__**, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i32*, align 8
  %22 = bitcast %struct.TYPE_14__* %11 to { i8*, i64 }*
  %23 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %22, i32 0, i32 0
  store i8* %2, i8** %23, align 8
  %24 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %22, i32 0, i32 1
  store i64 %3, i64* %24, align 8
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %12, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  %25 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %25, i64* %19, align 8
  store i32* null, i32** %21, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @apr_uri_port_of_scheme(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %29, %9
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @APR_UNSPEC, align 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32*, i32** %18, align 8
  %46 = call i64 @apr_sockaddr_info_get(i32** %21, i32 %41, i32 %42, i8* %44, i32 0, i32* %45)
  store i64 %46, i64* %19, align 8
  %47 = load i64, i64* %19, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i64, i64* %19, align 8
  store i64 %50, i64* %10, align 8
  br label %97

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %54 = load i32*, i32** %21, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = call %struct.TYPE_13__* @serf_connection_create(%struct.TYPE_12__* %53, i32* %54, i32 %55, i8* %56, i32 %57, i8* %58, i32* %59)
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %20, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @APR_URI_UNP_OMITPATHINFO, align 4
  %65 = load i32, i32* @APR_URI_UNP_OMITUSERINFO, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @apr_uri_unparse(i32 %63, %struct.TYPE_14__* %11, i32 %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = call i32 @apr_uri_parse(i32 %72, i32 %75, %struct.TYPE_11__* %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %93, label %84

84:                                               ; preds = %52
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @apr_uri_port_of_scheme(i32 %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  br label %93

93:                                               ; preds = %84, %52
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %95 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** %95, align 8
  %96 = load i64, i64* %19, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %93, %49
  %98 = load i64, i64* %10, align 8
  ret i64 %98
}

declare dso_local i8* @apr_uri_port_of_scheme(i32) #1

declare dso_local i64 @apr_sockaddr_info_get(i32**, i32, i32, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_13__* @serf_connection_create(%struct.TYPE_12__*, i32*, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @apr_uri_unparse(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @apr_uri_parse(i32, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
