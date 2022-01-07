; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_serf_request_bucket_request_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_serf_request_bucket_request_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_19__, i64, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (i32, i32, %struct.TYPE_24__*, %struct.TYPE_22__*, i8*, i8*, i32*)* }
%struct.TYPE_25__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (i32, i32, %struct.TYPE_24__*, %struct.TYPE_22__*, i8*, i8*, i32*)* }

@.str = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@HOST = common dso_local global i32 0, align 4
@PROXY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @serf_request_bucket_request_create(%struct.TYPE_22__* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %13, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %14, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @strcmp(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br label %34

34:                                               ; preds = %27, %5
  %35 = phi i1 [ false, %5 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32* @serf_bucket_request_create(i8* %37, i8* %38, i32* %39, i32* %40)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32* @serf_bucket_request_get_headers(i32* %42)
  store i32* %43, i32** %12, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %34
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56, %53
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @serf_bucket_request_set_root(i32* %62, i64 %65)
  br label %67

67:                                               ; preds = %61, %56, %48, %34
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i32*, i32** %12, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @serf_bucket_headers_setn(i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %73, %67
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %106, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %87 = call %struct.TYPE_25__* @serf__get_authn_info_for_server(%struct.TYPE_24__* %86)
  store %struct.TYPE_25__* %87, %struct.TYPE_25__** %16, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = icmp ne %struct.TYPE_18__* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32 (i32, i32, %struct.TYPE_24__*, %struct.TYPE_22__*, i8*, i8*, i32*)*, i32 (i32, i32, %struct.TYPE_24__*, %struct.TYPE_22__*, i8*, i8*, i32*)** %96, align 8
  %98 = load i32, i32* @HOST, align 4
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 %97(i32 %98, i32 0, %struct.TYPE_24__* %99, %struct.TYPE_22__* %100, i8* %101, i8* %102, i32* %103)
  br label %105

105:                                              ; preds = %92, %85
  br label %106

106:                                              ; preds = %105, %80
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = icmp ne %struct.TYPE_20__* %110, null
  br i1 %111, label %112, label %154

112:                                              ; preds = %106
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @strcmp(i32 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %112
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32 (i32, i32, %struct.TYPE_24__*, %struct.TYPE_22__*, i8*, i8*, i32*)*, i32 (i32, i32, %struct.TYPE_24__*, %struct.TYPE_22__*, i8*, i8*, i32*)** %129, align 8
  %131 = load i32, i32* @PROXY, align 4
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 %130(i32 %131, i32 0, %struct.TYPE_24__* %132, %struct.TYPE_22__* %133, i8* %134, i8* %135, i32* %136)
  br label %138

138:                                              ; preds = %124, %119
  br label %153

139:                                              ; preds = %112
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32 (i32, i32, %struct.TYPE_24__*, %struct.TYPE_22__*, i8*, i8*, i32*)*, i32 (i32, i32, %struct.TYPE_24__*, %struct.TYPE_22__*, i8*, i8*, i32*)** %144, align 8
  %146 = load i32, i32* @PROXY, align 4
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = call i32 %145(i32 %146, i32 0, %struct.TYPE_24__* %147, %struct.TYPE_22__* %148, i8* %149, i8* %150, i32* %151)
  br label %153

153:                                              ; preds = %139, %138
  br label %154

154:                                              ; preds = %153, %106
  %155 = load i32*, i32** %11, align 8
  ret i32* %155
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @serf_bucket_request_create(i8*, i8*, i32*, i32*) #1

declare dso_local i32* @serf_bucket_request_get_headers(i32*) #1

declare dso_local i32 @serf_bucket_request_set_root(i32*, i64) #1

declare dso_local i32 @serf_bucket_headers_setn(i32*, i8*, i64) #1

declare dso_local %struct.TYPE_25__* @serf__get_authn_info_for_server(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
