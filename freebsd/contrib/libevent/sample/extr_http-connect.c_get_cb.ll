; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_http-connect.c_get_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_http-connect.c_get_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.evbuffer = type { i32 }

@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @get_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_cb(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %8 = call i32 @VERIFY(%struct.evhttp_request* %7)
  %9 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %10 = call %struct.evbuffer* @evhttp_request_get_input_buffer(%struct.evhttp_request* %9)
  store %struct.evbuffer* %10, %struct.evbuffer** %6, align 8
  %11 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %12 = call i32 @evbuffer_get_length(%struct.evbuffer* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @evbuffer_pullup(%struct.evbuffer* %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fwrite(i32 %15, i32 %16, i32 1, i32 %17)
  %19 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @evbuffer_drain(%struct.evbuffer* %19, i32 %20)
  ret void
}

declare dso_local i32 @VERIFY(%struct.evhttp_request*) #1

declare dso_local %struct.evbuffer* @evhttp_request_get_input_buffer(%struct.evhttp_request*) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @evbuffer_pullup(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
