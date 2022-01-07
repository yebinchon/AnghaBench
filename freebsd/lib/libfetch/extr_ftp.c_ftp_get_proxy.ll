; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_get_proxy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_ftp.c_ftp_get_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url = type { i32*, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"FTP_PROXY\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ftp_proxy\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"HTTP_PROXY\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@SCHEME_FTP = common dso_local global i32 0, align 4
@SCHEME_HTTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.url* (%struct.url*, i8*)* @ftp_get_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.url* @ftp_get_proxy(%struct.url* %0, i8* %1) #0 {
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
  br label %100

15:                                               ; preds = %10, %2
  %16 = load %struct.url*, %struct.url** %4, align 8
  %17 = getelementptr inbounds %struct.url, %struct.url* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @fetch_no_proxy_match(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store %struct.url* null, %struct.url** %3, align 8
  br label %100

22:                                               ; preds = %15
  %23 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i8* %29, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %32, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %99

34:                                               ; preds = %31, %28, %25, %22
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %99

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = call %struct.url* @fetchParseURL(i8* %40)
  store %struct.url* %41, %struct.url** %6, align 8
  %42 = icmp ne %struct.url* %41, null
  br i1 %42, label %43, label %99

43:                                               ; preds = %39
  %44 = load %struct.url*, %struct.url** %6, align 8
  %45 = getelementptr inbounds %struct.url, %struct.url* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %43
  %50 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52, %49
  %56 = load %struct.url*, %struct.url** %6, align 8
  %57 = getelementptr inbounds %struct.url, %struct.url* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @SCHEME_FTP, align 4
  %60 = call i32 @strcpy(i32* %58, i32 %59)
  br label %67

61:                                               ; preds = %52
  %62 = load %struct.url*, %struct.url** %6, align 8
  %63 = getelementptr inbounds %struct.url, %struct.url* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @SCHEME_HTTP, align 4
  %66 = call i32 @strcpy(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %55
  br label %68

68:                                               ; preds = %67, %43
  %69 = load %struct.url*, %struct.url** %6, align 8
  %70 = getelementptr inbounds %struct.url, %struct.url* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = load %struct.url*, %struct.url** %6, align 8
  %75 = getelementptr inbounds %struct.url, %struct.url* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i64 @fetch_default_proxy_port(i32* %76)
  %78 = load %struct.url*, %struct.url** %6, align 8
  %79 = getelementptr inbounds %struct.url, %struct.url* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %73, %68
  %81 = load %struct.url*, %struct.url** %6, align 8
  %82 = getelementptr inbounds %struct.url, %struct.url* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @SCHEME_FTP, align 4
  %85 = call i64 @strcmp(i32* %83, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %struct.url*, %struct.url** %6, align 8
  %89 = getelementptr inbounds %struct.url, %struct.url* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @SCHEME_HTTP, align 4
  %92 = call i64 @strcmp(i32* %90, i32 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87, %80
  %95 = load %struct.url*, %struct.url** %6, align 8
  store %struct.url* %95, %struct.url** %3, align 8
  br label %100

96:                                               ; preds = %87
  %97 = load %struct.url*, %struct.url** %6, align 8
  %98 = call i32 @fetchFreeURL(%struct.url* %97)
  br label %99

99:                                               ; preds = %96, %39, %34, %31
  store %struct.url* null, %struct.url** %3, align 8
  br label %100

100:                                              ; preds = %99, %94, %21, %14
  %101 = load %struct.url*, %struct.url** %3, align 8
  ret %struct.url* %101
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
