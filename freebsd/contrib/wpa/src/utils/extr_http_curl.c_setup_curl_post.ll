; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_setup_curl_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_setup_curl_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_ctx = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Start HTTP client: address=%s ca_fname=%s username=%s%s\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_POST = common dso_local global i32 0, align 4
@CURLOPT_CAINFO = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYPEER = common dso_local global i32 0, align 4
@CURLOPT_SSLCERT = common dso_local global i32 0, align 4
@CURLOPT_SSLKEY = common dso_local global i32 0, align 4
@CURLOPT_CERTINFO = common dso_local global i32 0, align 4
@CURLOPT_DEBUGFUNCTION = common dso_local global i32 0, align 4
@curl_cb_debug = common dso_local global i8* null, align 8
@CURLOPT_DEBUGDATA = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@curl_cb_write = common dso_local global i8* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HTTPAUTH = common dso_local global i32 0, align 4
@CURLAUTH_ANYSAFE = common dso_local global i8* null, align 8
@CURLOPT_USERNAME = common dso_local global i32 0, align 4
@CURLOPT_PASSWORD = common dso_local global i32 0, align 4
@CURLOPT_SSL_CTX_DATA = common dso_local global i32 0, align 4
@CURLOPT_SSL_CTX_FUNCTION = common dso_local global i32 0, align 4
@CURLOPT_SSL_VERIFYSTATUS = common dso_local global i32 0, align 4
@NO_OCSP = common dso_local global i64 0, align 8
@curl_cb_ssl = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.http_ctx*, i8*, i8*, i8*, i8*, i8*, i8*)* @setup_curl_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @setup_curl_post(%struct.http_ctx* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.http_ctx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store %struct.http_ctx* %0, %struct.http_ctx** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i8*, i8** %17, align 8
  %23 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %19, i8* %20, i8* %21, i8* %22)
  %24 = call i32* (...) @curl_easy_init()
  store i32* %24, i32** %16, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %105

28:                                               ; preds = %7
  %29 = load i32*, i32** %16, align 8
  %30 = load i32, i32* @CURLOPT_URL, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %29, i32 %30, i8* %31)
  %33 = load i32*, i32** %16, align 8
  %34 = load i32, i32* @CURLOPT_POST, align 4
  %35 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %33, i32 %34, i64 1)
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load i32*, i32** %16, align 8
  %40 = load i32, i32* @CURLOPT_CAINFO, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %39, i32 %40, i8* %41)
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %45 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %43, i32 %44, i64 1)
  br label %50

46:                                               ; preds = %28
  %47 = load i32*, i32** %16, align 8
  %48 = load i32, i32* @CURLOPT_SSL_VERIFYPEER, align 4
  %49 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %47, i32 %48, i64 0)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i8*, i8** %14, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i8*, i8** %15, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32*, i32** %16, align 8
  %58 = load i32, i32* @CURLOPT_SSLCERT, align 4
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %57, i32 %58, i8* %59)
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* @CURLOPT_SSLKEY, align 4
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %61, i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %56, %53, %50
  %66 = load i32*, i32** %16, align 8
  %67 = load i32, i32* @CURLOPT_CERTINFO, align 4
  %68 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %66, i32 %67, i64 1)
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* @CURLOPT_DEBUGFUNCTION, align 4
  %71 = load i8*, i8** @curl_cb_debug, align 8
  %72 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %69, i32 %70, i8* %71)
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* @CURLOPT_DEBUGDATA, align 4
  %75 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %76 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %73, i32 %74, %struct.http_ctx* %75)
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %79 = load i8*, i8** @curl_cb_write, align 8
  %80 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %77, i32 %78, i8* %79)
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %83 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %84 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %81, i32 %82, %struct.http_ctx* %83)
  %85 = load i32*, i32** %16, align 8
  %86 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %87 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %85, i32 %86, i64 1)
  %88 = load i8*, i8** %12, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %65
  %91 = load i32*, i32** %16, align 8
  %92 = load i32, i32* @CURLOPT_HTTPAUTH, align 4
  %93 = load i8*, i8** @CURLAUTH_ANYSAFE, align 8
  %94 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %91, i32 %92, i8* %93)
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* @CURLOPT_USERNAME, align 4
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %95, i32 %96, i8* %97)
  %99 = load i32*, i32** %16, align 8
  %100 = load i32, i32* @CURLOPT_PASSWORD, align 4
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %99, i32 %100, i8* %101)
  br label %103

103:                                              ; preds = %90, %65
  %104 = load i32*, i32** %16, align 8
  store i32* %104, i32** %8, align 8
  br label %105

105:                                              ; preds = %103, %27
  %106 = load i32*, i32** %8, align 8
  ret i32* %106
}

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
