; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_handle_chunked_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_handle_chunked_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i64, i64, i32, %struct.evbuffer*, i32, i32 (%struct.evhttp_request*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.evbuffer = type { i32 }

@DATA_CORRUPTED = common dso_local global i32 0, align 4
@EV_SSIZE_MAX = common dso_local global i64 0, align 8
@EVBUFFER_EOL_CRLF = common dso_local global i32 0, align 4
@EV_SIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Request body is too long\00", align 1
@DATA_TOO_LONG = common dso_local global i32 0, align 4
@ALL_DATA_READ = common dso_local global i32 0, align 4
@MORE_DATA_EXPECTED = common dso_local global i32 0, align 4
@EVHTTP_REQ_DEFER_FREE = common dso_local global i32 0, align 4
@EVHTTP_REQ_NEEDS_FREE = common dso_local global i32 0, align 4
@REQUEST_CANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evhttp_request*, %struct.evbuffer*)* @evhttp_handle_chunked_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evhttp_handle_chunked_read(%struct.evhttp_request* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.evhttp_request* %0, %struct.evhttp_request** %4, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %5, align 8
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %12 = icmp eq %struct.evhttp_request* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %15 = icmp eq %struct.evbuffer* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @DATA_CORRUPTED, align 4
  store i32 %17, i32* %3, align 4
  br label %195

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %46, %118, %192
  %20 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %21 = call i64 @evbuffer_get_length(%struct.evbuffer* %20)
  store i64 %21, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %193

24:                                               ; preds = %19
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @EV_SSIZE_MAX, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @DATA_CORRUPTED, align 4
  store i32 %29, i32* %3, align 4
  br label %195

30:                                               ; preds = %24
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %32 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %119

35:                                               ; preds = %30
  %36 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %37 = load i32, i32* @EVBUFFER_EOL_CRLF, align 4
  %38 = call i8* @evbuffer_readln(%struct.evbuffer* %36, i32* null, i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %193

42:                                               ; preds = %35
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @mm_free(i8* %47)
  br label %19

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @evutil_strtoll(i8* %50, i8** %9, i32 16)
  store i64 %51, i64* %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %49
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 32
  br i1 %65, label %69, label %66

66:                                               ; preds = %61, %56
  %67 = load i64, i64* %7, align 8
  %68 = icmp slt i64 %67, 0
  br label %69

69:                                               ; preds = %66, %61, %49
  %70 = phi i1 [ true, %61 ], [ true, %49 ], [ %68, %66 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @mm_free(i8* %72)
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @DATA_CORRUPTED, align 4
  store i32 %77, i32* %3, align 4
  br label %195

78:                                               ; preds = %69
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @EV_SIZE_MAX, align 8
  %81 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %82 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = icmp sgt i64 %79, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @DATA_CORRUPTED, align 4
  store i32 %87, i32* %3, align 4
  br label %195

88:                                               ; preds = %78
  %89 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %90 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %91, %92
  %94 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %95 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %94, i32 0, i32 6
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ugt i64 %93, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = call i32 @event_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* @DATA_TOO_LONG, align 4
  store i32 %102, i32* %3, align 4
  br label %195

103:                                              ; preds = %88
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %106 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %111 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %113 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  %117 = load i32, i32* @ALL_DATA_READ, align 4
  store i32 %117, i32* %3, align 4
  br label %195

118:                                              ; preds = %103
  br label %19

119:                                              ; preds = %30
  %120 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %121 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @EV_SSIZE_MAX, align 8
  %124 = icmp ugt i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @DATA_CORRUPTED, align 4
  store i32 %126, i32* %3, align 4
  br label %195

127:                                              ; preds = %119
  %128 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %129 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load i64, i64* %6, align 8
  %134 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %135 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ult i64 %133, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @MORE_DATA_EXPECTED, align 4
  store i32 %139, i32* %3, align 4
  br label %195

140:                                              ; preds = %132, %127
  %141 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %142 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %143 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %142, i32 0, i32 3
  %144 = load %struct.evbuffer*, %struct.evbuffer** %143, align 8
  %145 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %146 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @evbuffer_remove_buffer(%struct.evbuffer* %141, %struct.evbuffer* %144, i64 %147)
  %149 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %150 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %149, i32 0, i32 0
  store i64 -1, i64* %150, align 8
  %151 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %152 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %151, i32 0, i32 5
  %153 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %152, align 8
  %154 = icmp ne i32 (%struct.evhttp_request*, i32)* %153, null
  br i1 %154, label %155, label %192

155:                                              ; preds = %140
  %156 = load i32, i32* @EVHTTP_REQ_DEFER_FREE, align 4
  %157 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %158 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %162 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %161, i32 0, i32 5
  %163 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %162, align 8
  %164 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %165 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %166 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 %163(%struct.evhttp_request* %164, i32 %167)
  %169 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %170 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %169, i32 0, i32 3
  %171 = load %struct.evbuffer*, %struct.evbuffer** %170, align 8
  %172 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %173 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %172, i32 0, i32 3
  %174 = load %struct.evbuffer*, %struct.evbuffer** %173, align 8
  %175 = call i64 @evbuffer_get_length(%struct.evbuffer* %174)
  %176 = call i32 @evbuffer_drain(%struct.evbuffer* %171, i64 %175)
  %177 = load i32, i32* @EVHTTP_REQ_DEFER_FREE, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %180 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %184 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @EVHTTP_REQ_NEEDS_FREE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %155
  %190 = load i32, i32* @REQUEST_CANCELED, align 4
  store i32 %190, i32* %3, align 4
  br label %195

191:                                              ; preds = %155
  br label %192

192:                                              ; preds = %191, %140
  br label %19

193:                                              ; preds = %41, %23
  %194 = load i32, i32* @MORE_DATA_EXPECTED, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %193, %189, %138, %125, %116, %100, %86, %76, %28, %16
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i8* @evbuffer_readln(%struct.evbuffer*, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mm_free(i8*) #1

declare dso_local i64 @evutil_strtoll(i8*, i8**, i32) #1

declare dso_local i32 @event_debug(i8*) #1

declare dso_local i32 @evbuffer_remove_buffer(%struct.evbuffer*, %struct.evbuffer*, i64) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
