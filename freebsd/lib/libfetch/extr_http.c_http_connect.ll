; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.url = type { i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@SCHEME_HTTPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CONNECT %s:%d HTTP/1.1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Host: %s:%d\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HTTP_OK = common dso_local global i64 0, align 8
@HTTP_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@hdr_end = common dso_local global i64 0, align 8
@EAUTH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NOPUSH = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.url*, %struct.url*, i8*)* @http_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @http_connect(%struct.url* %0, %struct.url* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.url*, align 8
  %6 = alloca %struct.url*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.url*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.url* %0, %struct.url** %5, align 8
  store %struct.url* %1, %struct.url** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* @AF_INET, align 4
  store i32 %17, i32* %14, align 4
  %18 = call i32 @CHECK_FLAG(i8 signext 118)
  store i32 %18, i32* %13, align 4
  %19 = call i32 @CHECK_FLAG(i8 signext 52)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @AF_INET, align 4
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %21, %3
  %24 = load %struct.url*, %struct.url** %6, align 8
  %25 = icmp ne %struct.url* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load %struct.url*, %struct.url** %6, align 8
  br label %30

28:                                               ; preds = %23
  %29 = load %struct.url*, %struct.url** %5, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi %struct.url* [ %27, %26 ], [ %29, %28 ]
  store %struct.url* %31, %struct.url** %8, align 8
  %32 = load %struct.url*, %struct.url** %8, align 8
  %33 = getelementptr inbounds %struct.url, %struct.url* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.url*, %struct.url** %8, align 8
  %36 = getelementptr inbounds %struct.url, %struct.url* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call %struct.TYPE_10__* @fetch_connect(i32 %34, i32 %37, i32 %38, i32 %39)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %9, align 8
  %41 = icmp eq %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %135

43:                                               ; preds = %30
  %44 = call i32 @init_http_headerbuf(i32* %11)
  %45 = load %struct.url*, %struct.url** %5, align 8
  %46 = getelementptr inbounds %struct.url, %struct.url* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SCHEME_HTTPS, align 4
  %49 = call i64 @strcmp(i32 %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %104

51:                                               ; preds = %43
  %52 = load %struct.url*, %struct.url** %6, align 8
  %53 = icmp ne %struct.url* %52, null
  br i1 %53, label %54, label %104

54:                                               ; preds = %51
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = load %struct.url*, %struct.url** %5, align 8
  %57 = getelementptr inbounds %struct.url, %struct.url* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.url*, %struct.url** %5, align 8
  %60 = getelementptr inbounds %struct.url, %struct.url* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.TYPE_10__*, i8*, ...) @http_cmd(%struct.TYPE_10__* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = load %struct.url*, %struct.url** %5, align 8
  %65 = getelementptr inbounds %struct.url, %struct.url* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.url*, %struct.url** %5, align 8
  %68 = getelementptr inbounds %struct.url, %struct.url* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.TYPE_10__*, i8*, ...) @http_cmd(%struct.TYPE_10__* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = call i32 (%struct.TYPE_10__*, i8*, ...) @http_cmd(%struct.TYPE_10__* %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = call i64 @http_get_reply(%struct.TYPE_10__* %73)
  %75 = load i64, i64* @HTTP_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %54
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @http_seterr(i32 %80)
  br label %129

82:                                               ; preds = %54
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %84 = call i64 @fetch_getln(%struct.TYPE_10__* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 (...) @fetch_syserr()
  br label %129

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %99, %88
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %91 = call i64 @http_next_header(%struct.TYPE_10__* %90, i32* %11, i8** %12)
  store i64 %91, i64* %10, align 8
  switch i64 %91, label %97 [
    i64 128, label %92
    i64 129, label %94
  ]

92:                                               ; preds = %89
  %93 = call i32 (...) @fetch_syserr()
  br label %129

94:                                               ; preds = %89
  %95 = load i32, i32* @HTTP_PROTOCOL_ERROR, align 4
  %96 = call i32 @http_seterr(i32 %95)
  br label %129

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @hdr_end, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %89, label %103

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %51, %43
  %105 = load %struct.url*, %struct.url** %5, align 8
  %106 = getelementptr inbounds %struct.url, %struct.url* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SCHEME_HTTPS, align 4
  %109 = call i64 @strcmp(i32 %107, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %113 = load %struct.url*, %struct.url** %5, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @fetch_ssl(%struct.TYPE_10__* %112, %struct.url* %113, i32 %114)
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @EAUTH, align 4
  store i32 %118, i32* @errno, align 4
  %119 = call i32 (...) @fetch_syserr()
  br label %129

120:                                              ; preds = %111, %104
  store i32 1, i32* %15, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IPPROTO_TCP, align 4
  %125 = load i32, i32* @TCP_NOPUSH, align 4
  %126 = call i32 @setsockopt(i32 %123, i32 %124, i32 %125, i32* %15, i32 4)
  %127 = call i32 @clean_http_headerbuf(i32* %11)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %4, align 8
  br label %135

129:                                              ; preds = %117, %94, %92, %86, %77
  %130 = load i32, i32* @errno, align 4
  store i32 %130, i32* %16, align 4
  %131 = call i32 @clean_http_headerbuf(i32* %11)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %133 = call i32 @fetch_close(%struct.TYPE_10__* %132)
  %134 = load i32, i32* %16, align 4
  store i32 %134, i32* @errno, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %135

135:                                              ; preds = %129, %120, %42
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %136
}

declare dso_local i32 @CHECK_FLAG(i8 signext) #1

declare dso_local %struct.TYPE_10__* @fetch_connect(i32, i32, i32, i32) #1

declare dso_local i32 @init_http_headerbuf(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @http_cmd(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i64 @http_get_reply(%struct.TYPE_10__*) #1

declare dso_local i32 @http_seterr(i32) #1

declare dso_local i64 @fetch_getln(%struct.TYPE_10__*) #1

declare dso_local i32 @fetch_syserr(...) #1

declare dso_local i64 @http_next_header(%struct.TYPE_10__*, i32*, i8**) #1

declare dso_local i32 @fetch_ssl(%struct.TYPE_10__*, %struct.url*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @clean_http_headerbuf(i32*) #1

declare dso_local i32 @fetch_close(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
