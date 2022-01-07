; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_curl_cb_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_curl_cb_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_ctx = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"CURLINFO_TEXT\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CURLINFO_HEADER_IN\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"CURLINFO_HEADER_OUT\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"CURLINFO_DATA_IN\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"CURLINFO_DATA_OUT\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"debug - CURLINFO_SSL_DATA_IN - %d\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"debug - CURLINFO_SSL_DATA_OUT - %d\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"debug - CURLINFO_END - %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64, i8*)* @curl_cb_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curl_cb_debug(i32* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.http_ctx*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.http_ctx*
  store %struct.http_ctx* %13, %struct.http_ctx** %11, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %55 [
    i32 128, label %15
    i32 132, label %20
    i32 131, label %25
    i32 135, label %30
    i32 134, label %35
    i32 130, label %40
    i32 129, label %45
    i32 133, label %50
  ]

15:                                               ; preds = %5
  %16 = load %struct.http_ctx*, %struct.http_ctx** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @debug_dump(%struct.http_ctx* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
  br label %55

20:                                               ; preds = %5
  %21 = load %struct.http_ctx*, %struct.http_ctx** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @debug_dump(%struct.http_ctx* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %22, i64 %23)
  br label %55

25:                                               ; preds = %5
  %26 = load %struct.http_ctx*, %struct.http_ctx** %11, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @debug_dump(%struct.http_ctx* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %27, i64 %28)
  br label %55

30:                                               ; preds = %5
  %31 = load %struct.http_ctx*, %struct.http_ctx** %11, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @debug_dump(%struct.http_ctx* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %32, i64 %33)
  br label %55

35:                                               ; preds = %5
  %36 = load %struct.http_ctx*, %struct.http_ctx** %11, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @debug_dump(%struct.http_ctx* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %37, i64 %38)
  br label %55

40:                                               ; preds = %5
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  br label %55

45:                                               ; preds = %5
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i64, i64* %9, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  br label %55

50:                                               ; preds = %5
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %5, %50, %45, %40, %35, %30, %25, %20, %15
  ret i32 0
}

declare dso_local i32 @debug_dump(%struct.http_ctx*, i8*, i8*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
