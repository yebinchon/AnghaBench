; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_read_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_read_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32 }
%struct.evhttp_request = type { i64, i64, i32, %struct.evbuffer*, i32, i32 (%struct.evhttp_request*, i32)*, %struct.TYPE_2__*, i64 }
%struct.evbuffer = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EVCON_READING_TRAILER = common dso_local global i32 0, align 4
@EVREQ_HTTP_DATA_TOO_LONG = common dso_local global i32 0, align 4
@EVREQ_HTTP_INVALID_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Request body is too long\00", align 1
@EVHTTP_REQ_DEFER_FREE = common dso_local global i32 0, align 4
@EVHTTP_REQ_NEEDS_FREE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_read_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_read_body(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i64, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %7 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %8 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.evbuffer* @bufferevent_get_input(i32 %9)
  store %struct.evbuffer* %10, %struct.evbuffer** %5, align 8
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %12 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %17 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %18 = call i32 @evhttp_handle_chunked_read(%struct.evhttp_request* %16, %struct.evbuffer* %17)
  switch i32 %18, label %34 [
    i32 132, label %19
    i32 131, label %26
    i32 130, label %26
    i32 128, label %30
    i32 129, label %33
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @EVCON_READING_TRAILER, align 4
  %21 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %22 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %24 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %25 = call i32 @evhttp_read_trailer(%struct.evhttp_connection* %23, %struct.evhttp_request* %24)
  br label %214

26:                                               ; preds = %15, %15
  %27 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %28 = load i32, i32* @EVREQ_HTTP_DATA_TOO_LONG, align 4
  %29 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %27, i32 %28)
  br label %214

30:                                               ; preds = %15
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %32 = call i32 @evhttp_request_free(%struct.evhttp_request* %31)
  br label %214

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %15, %33
  br label %35

35:                                               ; preds = %34
  br label %111

36:                                               ; preds = %2
  %37 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %38 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %43 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %46 = call i64 @evbuffer_get_length(%struct.evbuffer* %45)
  %47 = add i64 %44, %46
  %48 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %49 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %54 = load i32, i32* @EVREQ_HTTP_INVALID_HEADER, align 4
  %55 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %53, i32 %54)
  br label %214

56:                                               ; preds = %41
  %57 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %58 = call i64 @evbuffer_get_length(%struct.evbuffer* %57)
  %59 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %60 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %64 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %63, i32 0, i32 3
  %65 = load %struct.evbuffer*, %struct.evbuffer** %64, align 8
  %66 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %67 = call i32 @evbuffer_add_buffer(%struct.evbuffer* %65, %struct.evbuffer* %66)
  br label %110

68:                                               ; preds = %36
  %69 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %70 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %69, i32 0, i32 5
  %71 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.evhttp_request*, i32)* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %75 = call i64 @evbuffer_get_length(%struct.evbuffer* %74)
  %76 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %77 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %75, %78
  br i1 %79, label %80, label %109

80:                                               ; preds = %73, %68
  %81 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %82 = call i64 @evbuffer_get_length(%struct.evbuffer* %81)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %85 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %90 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %88, %80
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %95 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %100 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %104 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %105 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %104, i32 0, i32 3
  %106 = load %struct.evbuffer*, %struct.evbuffer** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @evbuffer_remove_buffer(%struct.evbuffer* %103, %struct.evbuffer* %106, i64 %107)
  br label %109

109:                                              ; preds = %92, %73
  br label %110

110:                                              ; preds = %109, %56
  br label %111

111:                                              ; preds = %110, %35
  %112 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %113 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %116 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %115, i32 0, i32 6
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ugt i64 %114, %119
  br i1 %120, label %141, label %121

121:                                              ; preds = %111
  %122 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %123 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %146, label %126

126:                                              ; preds = %121
  %127 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %128 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %133 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %136 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %135, i32 0, i32 6
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ugt i64 %134, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %131, %111
  %142 = call i32 @event_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %143 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %144 = load i32, i32* @EVREQ_HTTP_DATA_TOO_LONG, align 4
  %145 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %143, i32 %144)
  br label %214

146:                                              ; preds = %131, %126, %121
  %147 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %148 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %147, i32 0, i32 3
  %149 = load %struct.evbuffer*, %struct.evbuffer** %148, align 8
  %150 = call i64 @evbuffer_get_length(%struct.evbuffer* %149)
  %151 = icmp ugt i64 %150, 0
  br i1 %151, label %152, label %195

152:                                              ; preds = %146
  %153 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %154 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %153, i32 0, i32 5
  %155 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %154, align 8
  %156 = icmp ne i32 (%struct.evhttp_request*, i32)* %155, null
  br i1 %156, label %157, label %195

157:                                              ; preds = %152
  %158 = load i32, i32* @EVHTTP_REQ_DEFER_FREE, align 4
  %159 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %160 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %164 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %163, i32 0, i32 5
  %165 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %164, align 8
  %166 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %167 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %168 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 %165(%struct.evhttp_request* %166, i32 %169)
  %171 = load i32, i32* @EVHTTP_REQ_DEFER_FREE, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %174 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %178 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %177, i32 0, i32 3
  %179 = load %struct.evbuffer*, %struct.evbuffer** %178, align 8
  %180 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %181 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %180, i32 0, i32 3
  %182 = load %struct.evbuffer*, %struct.evbuffer** %181, align 8
  %183 = call i64 @evbuffer_get_length(%struct.evbuffer* %182)
  %184 = call i32 @evbuffer_drain(%struct.evbuffer* %179, i64 %183)
  %185 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %186 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @EVHTTP_REQ_NEEDS_FREE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %157
  %192 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %193 = call i32 @evhttp_request_free(%struct.evhttp_request* %192)
  br label %214

194:                                              ; preds = %157
  br label %195

195:                                              ; preds = %194, %152, %146
  %196 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %197 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %202 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @EV_READ, align 4
  %205 = call i32 @bufferevent_disable(i32 %203, i32 %204)
  %206 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %207 = call i32 @evhttp_connection_done(%struct.evhttp_connection* %206)
  br label %214

208:                                              ; preds = %195
  %209 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %210 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @EV_READ, align 4
  %213 = call i32 @bufferevent_enable(i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %208, %200, %191, %141, %52, %30, %26, %19
  ret void
}

declare dso_local %struct.evbuffer* @bufferevent_get_input(i32) #1

declare dso_local i32 @evhttp_handle_chunked_read(%struct.evhttp_request*, %struct.evbuffer*) #1

declare dso_local i32 @evhttp_read_trailer(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_fail_(%struct.evhttp_connection*, i32) #1

declare dso_local i32 @evhttp_request_free(%struct.evhttp_request*) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add_buffer(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_remove_buffer(%struct.evbuffer*, %struct.evbuffer*, i64) #1

declare dso_local i32 @event_debug(i8*) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i64) #1

declare dso_local i32 @bufferevent_disable(i32, i32) #1

declare dso_local i32 @evhttp_connection_done(%struct.evhttp_connection*) #1

declare dso_local i32 @bufferevent_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
