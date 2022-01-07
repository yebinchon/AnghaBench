; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_parse_firstline_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_parse_firstline_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.evbuffer = type { i32 }

@ALL_DATA_READ = common dso_local global i32 0, align 4
@EVBUFFER_EOL_CRLF = common dso_local global i32 0, align 4
@DATA_TOO_LONG = common dso_local global i32 0, align 4
@MORE_DATA_EXPECTED = common dso_local global i32 0, align 4
@DATA_CORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evhttp_parse_firstline_(%struct.evhttp_request* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %4, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %5, align 8
  %9 = load i32, i32* @ALL_DATA_READ, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %11 = load i32, i32* @EVBUFFER_EOL_CRLF, align 4
  %12 = call i8* @evbuffer_readln(%struct.evbuffer* %10, i64* %8, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %17 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %22 = call i64 @evbuffer_get_length(%struct.evbuffer* %21)
  %23 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %24 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %22, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @DATA_TOO_LONG, align 4
  store i32 %30, i32* %3, align 4
  br label %79

31:                                               ; preds = %20, %15
  %32 = load i32, i32* @MORE_DATA_EXPECTED, align 4
  store i32 %32, i32* %3, align 4
  br label %79

33:                                               ; preds = %2
  %34 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %35 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %41 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %39, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @mm_free(i8* %47)
  %49 = load i32, i32* @DATA_TOO_LONG, align 4
  store i32 %49, i32* %3, align 4
  br label %79

50:                                               ; preds = %38, %33
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %53 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %55 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %73 [
    i32 129, label %57
    i32 128, label %65
  ]

57:                                               ; preds = %50
  %58 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @evhttp_parse_request_line(%struct.evhttp_request* %58, i8* %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @DATA_CORRUPTED, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %57
  br label %75

65:                                               ; preds = %50
  %66 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @evhttp_parse_response_line(%struct.evhttp_request* %66, i8* %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @DATA_CORRUPTED, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %65
  br label %75

73:                                               ; preds = %50
  %74 = load i32, i32* @DATA_CORRUPTED, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %72, %64
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @mm_free(i8* %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %46, %31, %29
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i8* @evbuffer_readln(%struct.evbuffer*, i64*, i32) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @mm_free(i8*) #1

declare dso_local i32 @evhttp_parse_request_line(%struct.evhttp_request*, i8*) #1

declare dso_local i32 @evhttp_parse_response_line(%struct.evhttp_request*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
