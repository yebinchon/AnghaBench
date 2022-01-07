; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_http_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_http_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_ctx = type { i8*, i8*, i64 }
%struct.curl_slist = type opaque

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"curl: HTTP POST to %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Content-Type: %s\00", align 1
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDS = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"curl_easy_perform() failed: %s\00", align 1
@CURLINFO_RESPONSE_CODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"curl: Server response code %ld\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"HTTP POST failed\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"HTTP POST failed - code %ld\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Server response:\0A%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @http_post(%struct.http_ctx* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i64* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca %struct.http_ctx*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.curl_slist*, align 8
  %29 = alloca [200 x i8], align 16
  store %struct.http_ctx* %0, %struct.http_ctx** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i64* %10, i64** %23, align 8
  store i64 0, i64* %24, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %28, align 8
  %30 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %31 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %30, i32 0, i32 0
  store i8* null, i8** %31, align 8
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = load i8*, i8** %20, align 8
  %40 = load i8*, i8** %21, align 8
  %41 = load i8*, i8** %22, align 8
  %42 = call i32* @setup_curl_post(%struct.http_ctx* %35, i8* %36, i8* %37, i8* %38, i8* %39, i8* %40, i8* %41)
  store i32* %42, i32** %27, align 8
  %43 = load i32*, i32** %27, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %11
  store i8* null, i8** %12, align 8
  br label %145

46:                                               ; preds = %11
  %47 = load i8*, i8** %16, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = getelementptr inbounds [200 x i8], [200 x i8]* %29, i64 0, i64 0
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @snprintf(i8* %50, i32 200, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load %struct.curl_slist*, %struct.curl_slist** %28, align 8
  %54 = bitcast %struct.curl_slist* %53 to i8*
  %55 = getelementptr inbounds [200 x i8], [200 x i8]* %29, i64 0, i64 0
  %56 = call i8* @curl_slist_append(i8* %54, i8* %55)
  %57 = bitcast i8* %56 to %struct.curl_slist*
  store %struct.curl_slist* %57, %struct.curl_slist** %28, align 8
  br label %58

58:                                               ; preds = %49, %46
  %59 = load i8*, i8** %17, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.curl_slist*, %struct.curl_slist** %28, align 8
  %63 = bitcast %struct.curl_slist* %62 to i8*
  %64 = load i8*, i8** %17, align 8
  %65 = call i8* @curl_slist_append(i8* %63, i8* %64)
  %66 = bitcast i8* %65 to %struct.curl_slist*
  store %struct.curl_slist* %66, %struct.curl_slist** %28, align 8
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32*, i32** %27, align 8
  %69 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %70 = load %struct.curl_slist*, %struct.curl_slist** %28, align 8
  %71 = bitcast %struct.curl_slist* %70 to i8*
  %72 = call i32 @curl_easy_setopt(i32* %68, i32 %69, i8* %71)
  %73 = load i32*, i32** %27, align 8
  %74 = load i32, i32* @CURLOPT_POSTFIELDS, align 4
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 @curl_easy_setopt(i32* %73, i32 %74, i8* %75)
  %77 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %78 = call i32 @free_curl_buf(%struct.http_ctx* %77)
  %79 = load i32*, i32** %27, align 8
  %80 = call i64 @curl_easy_perform(i32* %79)
  store i64 %80, i64* %25, align 8
  %81 = load i64, i64* %25, align 8
  %82 = load i64, i64* @CURLE_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %67
  %85 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %86 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i64, i64* %25, align 8
  %91 = call i8* @curl_easy_strerror(i64 %90)
  %92 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %93 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* @MSG_ERROR, align 4
  %96 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %97 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %98)
  %100 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %101 = call i32 @free_curl_buf(%struct.http_ctx* %100)
  store i8* null, i8** %12, align 8
  br label %145

102:                                              ; preds = %67
  %103 = load i32*, i32** %27, align 8
  %104 = load i32, i32* @CURLINFO_RESPONSE_CODE, align 4
  %105 = call i32 @curl_easy_getinfo(i32* %103, i32 %104, i64* %24)
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load i64, i64* %24, align 8
  %108 = call i32 (i32, i8*, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %107)
  %109 = load i64, i64* %24, align 8
  %110 = icmp ne i64 %109, 200
  br i1 %110, label %111, label %119

111:                                              ; preds = %102
  %112 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %113 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %112, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %113, align 8
  %114 = load i32, i32* @MSG_INFO, align 4
  %115 = load i64, i64* %24, align 8
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %115)
  %117 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %118 = call i32 @free_curl_buf(%struct.http_ctx* %117)
  store i8* null, i8** %12, align 8
  br label %145

119:                                              ; preds = %102
  %120 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %121 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i8* null, i8** %12, align 8
  br label %145

125:                                              ; preds = %119
  %126 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %127 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %26, align 8
  %129 = load i64*, i64** %23, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %133 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** %23, align 8
  store i64 %134, i64* %135, align 8
  br label %136

136:                                              ; preds = %131, %125
  %137 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %138 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %137, i32 0, i32 1
  store i8* null, i8** %138, align 8
  %139 = load %struct.http_ctx*, %struct.http_ctx** %13, align 8
  %140 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* @MSG_MSGDUMP, align 4
  %142 = load i8*, i8** %26, align 8
  %143 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %142)
  %144 = load i8*, i8** %26, align 8
  store i8* %144, i8** %12, align 8
  br label %145

145:                                              ; preds = %136, %124, %111, %94, %45
  %146 = load i8*, i8** %12, align 8
  ret i8* %146
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @setup_curl_post(%struct.http_ctx*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @free_curl_buf(%struct.http_ctx*) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i32 @curl_easy_getinfo(i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
