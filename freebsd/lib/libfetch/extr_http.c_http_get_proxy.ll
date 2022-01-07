; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_get_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_get_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i32*, i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"HTTP_PROXY\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@SCHEME_HTTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.url* (%struct.url*, i8*)* @http_get_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.url* @http_get_proxy(%struct.url* %0, i8* %1) #0 {
  %3 = alloca %struct.url*, align 8
  %4 = alloca %struct.url*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.url*, align 8
  %7 = alloca i8*, align 8
  store %struct.url* %0, %struct.url** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @strchr(i8* %11, i8 signext 100)
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store %struct.url* null, %struct.url** %3, align 8
  br label %74

15:                                               ; preds = %10, %2
  %16 = load %struct.url*, %struct.url** %4, align 8
  %17 = getelementptr inbounds %struct.url, %struct.url* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @fetch_no_proxy_match(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store %struct.url* null, %struct.url** %3, align 8
  br label %74

22:                                               ; preds = %15
  %23 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %73

28:                                               ; preds = %25, %22
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = call %struct.url* @fetchParseURL(i8* %34)
  store %struct.url* %35, %struct.url** %6, align 8
  %36 = icmp ne %struct.url* %35, null
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load %struct.url*, %struct.url** %6, align 8
  %39 = getelementptr inbounds %struct.url, %struct.url* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.url*, %struct.url** %6, align 8
  %45 = getelementptr inbounds %struct.url, %struct.url* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @SCHEME_HTTP, align 4
  %48 = call i32 @strcpy(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.url*, %struct.url** %6, align 8
  %51 = getelementptr inbounds %struct.url, %struct.url* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.url*, %struct.url** %6, align 8
  %56 = getelementptr inbounds %struct.url, %struct.url* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @fetch_default_proxy_port(i32* %57)
  %59 = load %struct.url*, %struct.url** %6, align 8
  %60 = getelementptr inbounds %struct.url, %struct.url* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.url*, %struct.url** %6, align 8
  %63 = getelementptr inbounds %struct.url, %struct.url* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @SCHEME_HTTP, align 4
  %66 = call i64 @strcmp(i32* %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load %struct.url*, %struct.url** %6, align 8
  store %struct.url* %69, %struct.url** %3, align 8
  br label %74

70:                                               ; preds = %61
  %71 = load %struct.url*, %struct.url** %6, align 8
  %72 = call i32 @fetchFreeURL(%struct.url* %71)
  br label %73

73:                                               ; preds = %70, %33, %28, %25
  store %struct.url* null, %struct.url** %3, align 8
  br label %74

74:                                               ; preds = %73, %68, %21, %14
  %75 = load %struct.url*, %struct.url** %3, align 8
  ret %struct.url* %75
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @fetch_no_proxy_match(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local %struct.url* @fetchParseURL(i8*) #1

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i64 @fetch_default_proxy_port(i32*) #1

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @fetchFreeURL(%struct.url*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
