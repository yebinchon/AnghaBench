; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_parse_headers_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_parse_headers_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i64, %struct.TYPE_2__*, %struct.evkeyvalq* }
%struct.TYPE_2__ = type { i64 }
%struct.evkeyvalq = type { i32 }
%struct.evbuffer = type { i32 }

@DATA_CORRUPTED = common dso_local global i32 0, align 4
@MORE_DATA_EXPECTED = common dso_local global i32 0, align 4
@EVBUFFER_EOL_CRLF = common dso_local global i32 0, align 4
@DATA_TOO_LONG = common dso_local global i32 0, align 4
@ALL_DATA_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evhttp_parse_headers_(%struct.evhttp_request* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.evkeyvalq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %4, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %5, align 8
  %13 = load i32, i32* @DATA_CORRUPTED, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @MORE_DATA_EXPECTED, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %16 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %15, i32 0, i32 2
  %17 = load %struct.evkeyvalq*, %struct.evkeyvalq** %16, align 8
  store %struct.evkeyvalq* %17, %struct.evkeyvalq** %9, align 8
  br label %18

18:                                               ; preds = %93, %70, %2
  %19 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %20 = load i32, i32* @EVBUFFER_EOL_CRLF, align 4
  %21 = call i8* @evbuffer_readln(%struct.evbuffer* %19, i64* %10, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %96

23:                                               ; preds = %18
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %26 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %30 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %23
  %34 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %35 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %38 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @DATA_TOO_LONG, align 4
  store i32 %44, i32* %6, align 4
  br label %123

45:                                               ; preds = %33, %23
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @ALL_DATA_READ, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @mm_free(i8* %52)
  br label %96

54:                                               ; preds = %45
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 9
  br i1 %63, label %64, label %73

64:                                               ; preds = %59, %54
  %65 = load %struct.evkeyvalq*, %struct.evkeyvalq** %9, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @evhttp_append_to_last_header(%struct.evkeyvalq* %65, i8* %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %123

70:                                               ; preds = %64
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @mm_free(i8* %71)
  br label %18

73:                                               ; preds = %59
  %74 = load i8*, i8** %7, align 8
  store i8* %74, i8** %12, align 8
  %75 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %123

79:                                               ; preds = %73
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @strspn(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i8*, i8** %12, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @evutil_rtrim_lws_(i8* %85)
  %87 = load %struct.evkeyvalq*, %struct.evkeyvalq** %9, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @evhttp_add_header(%struct.evkeyvalq* %87, i8* %88, i8* %89)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %123

93:                                               ; preds = %79
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @mm_free(i8* %94)
  br label %18

96:                                               ; preds = %50, %18
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @MORE_DATA_EXPECTED, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %102 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = icmp ne %struct.TYPE_2__* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %100
  %106 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %107 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %110 = call i64 @evbuffer_get_length(%struct.evbuffer* %109)
  %111 = add nsw i64 %108, %110
  %112 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %113 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %111, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i32, i32* @DATA_TOO_LONG, align 4
  store i32 %119, i32* %3, align 4
  br label %127

120:                                              ; preds = %105, %100
  br label %121

121:                                              ; preds = %120, %96
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %127

123:                                              ; preds = %92, %78, %69, %43
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @mm_free(i8* %124)
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %121, %118
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i8* @evbuffer_readln(%struct.evbuffer*, i64*, i32) #1

declare dso_local i32 @mm_free(i8*) #1

declare dso_local i32 @evhttp_append_to_last_header(%struct.evkeyvalq*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @evutil_rtrim_lws_(i8*) #1

declare dso_local i32 @evhttp_add_header(%struct.evkeyvalq*, i8*, i8*) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
