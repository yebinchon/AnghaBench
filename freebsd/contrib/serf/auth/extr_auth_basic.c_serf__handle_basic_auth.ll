; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_basic.c_serf__handle_basic_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/auth/extr_auth_basic.c_serf__handle_basic_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__*, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i32 }

@SERF_ERROR_AUTHN_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@SERF_ERROR_AUTHN_MISSING_ATTRIBUTE = common dso_local global i64 0, align 8
@HOST = common dso_local global i32 0, align 4
@PROXY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Proxy-Authorization\00", align 1
@APR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serf__handle_basic_auth(i32 %0, %struct.TYPE_14__* %1, i32* %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %18, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %19, align 8
  store i8* null, i8** %28, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %7
  %41 = load i64, i64* @SERF_ERROR_AUTHN_FAILED, align 8
  store i64 %41, i64* %8, align 8
  br label %161

42:                                               ; preds = %7
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 401
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %47 = call %struct.TYPE_17__* @serf__get_authn_info_for_server(%struct.TYPE_16__* %46)
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %20, align 8
  br label %51

48:                                               ; preds = %42
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %20, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  store %struct.TYPE_18__* %54, %struct.TYPE_18__** %21, align 8
  store i8* null, i8** %26, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 61)
  store i8* %56, i8** %27, align 8
  %57 = load i8*, i8** %27, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %111

59:                                               ; preds = %51
  %60 = load i8*, i8** %13, align 8
  %61 = call i64 @strncasecmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %111

63:                                               ; preds = %59
  %64 = load i32*, i32** %15, align 8
  %65 = load i8*, i8** %27, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = call i8* @apr_pstrdup(i32* %64, i8* %66)
  store i8* %67, i8** %26, align 8
  %68 = load i8*, i8** %26, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 34
  br i1 %72, label %73, label %93

73:                                               ; preds = %63
  %74 = load i8*, i8** %26, align 8
  %75 = call i32 @strlen(i8* %74)
  store i32 %75, i32* %29, align 4
  %76 = load i8*, i8** %26, align 8
  %77 = load i32, i32* %29, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 34
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = load i8*, i8** %26, align 8
  %86 = load i32, i32* %29, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %26, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %26, align 8
  br label %92

92:                                               ; preds = %84, %73
  br label %93

93:                                               ; preds = %92, %63
  %94 = load i8*, i8** %26, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* @SERF_ERROR_AUTHN_MISSING_ATTRIBUTE, align 8
  store i64 %97, i64* %8, align 8
  br label %161

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 401
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @HOST, align 4
  br label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @PROXY, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %108 = load i8*, i8** %26, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = call i8* @serf__construct_realm(i32 %106, %struct.TYPE_16__* %107, i8* %108, i32* %109)
  store i8* %110, i8** %28, align 8
  br label %111

111:                                              ; preds = %105, %59, %51
  %112 = load i32*, i32** %15, align 8
  %113 = call i32 @apr_pool_create(i32** %23, i32* %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %28, align 8
  %124 = load i32*, i32** %23, align 8
  %125 = call i64 @serf__provide_credentials(%struct.TYPE_15__* %114, i8** %24, i8** %25, %struct.TYPE_14__* %115, i8* %116, i32 %117, i32 %122, i8* %123, i32* %124)
  store i64 %125, i64* %22, align 8
  %126 = load i64, i64* %22, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %111
  %129 = load i32*, i32** %23, align 8
  %130 = call i32 @apr_pool_destroy(i32* %129)
  %131 = load i64, i64* %22, align 8
  store i64 %131, i64* %8, align 8
  br label %161

132:                                              ; preds = %111
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i8*, i8** %24, align 8
  %137 = load i8*, i8** %25, align 8
  %138 = call i8* @apr_pstrcat(i32 %135, i8* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %137, i32* null)
  store i8* %138, i8** %16, align 8
  %139 = load i8*, i8** %16, align 8
  %140 = call i32 @strlen(i8* %139)
  store i32 %140, i32* %17, align 4
  %141 = load i32*, i32** %23, align 8
  %142 = call i32 @apr_pool_destroy(i32* %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i8*, i8** %16, align 8
  %151 = load i32, i32* %17, align 4
  %152 = load i32*, i32** %15, align 8
  %153 = call i32 @serf__encode_auth_header(i32* %144, i32 %149, i8* %150, i32 %151, i32* %152)
  %154 = load i32, i32* %9, align 4
  %155 = icmp eq i32 %154, 401
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %160, i64* %8, align 8
  br label %161

161:                                              ; preds = %132, %128, %96, %40
  %162 = load i64, i64* %8, align 8
  ret i64 %162
}

declare dso_local %struct.TYPE_17__* @serf__get_authn_info_for_server(%struct.TYPE_16__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @serf__construct_realm(i32, %struct.TYPE_16__*, i8*, i32*) #1

declare dso_local i32 @apr_pool_create(i32**, i32*) #1

declare dso_local i64 @serf__provide_credentials(%struct.TYPE_15__*, i8**, i8**, %struct.TYPE_14__*, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @apr_pool_destroy(i32*) #1

declare dso_local i8* @apr_pstrcat(i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @serf__encode_auth_header(i32*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
