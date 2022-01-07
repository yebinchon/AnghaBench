; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_soap_init_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_http_curl.c_soap_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_ctx = type { i8*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Content-Type: application/soap+xml\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SOAPAction: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Expect:\00", align 1
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soap_init_client(%struct.http_ctx* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.http_ctx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.http_ctx* %0, %struct.http_ctx** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %16 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = call i64 @post_init_client(%struct.http_ctx* %16, i8* %17, i8* %18, i8* %19, i8* %20, i8* %21, i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %53

26:                                               ; preds = %7
  %27 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @curl_slist_append(i8* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @curl_slist_append(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %38 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @curl_slist_append(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %44 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %49 = load %struct.http_ctx*, %struct.http_ctx** %9, align 8
  %50 = getelementptr inbounds %struct.http_ctx, %struct.http_ctx* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @curl_easy_setopt(i32 %47, i32 %48, i8* %51)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %26, %25
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i64 @post_init_client(%struct.http_ctx*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i32 @curl_easy_setopt(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
