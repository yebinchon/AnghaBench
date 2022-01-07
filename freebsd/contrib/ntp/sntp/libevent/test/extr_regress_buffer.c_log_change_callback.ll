; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_buffer.c_log_change_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_buffer.c_log_change_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_cb_info = type { i64, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"%lu->%lu; \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer*, %struct.evbuffer_cb_info*, i8*)* @log_change_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_change_callback(%struct.evbuffer* %0, %struct.evbuffer_cb_info* %1, i8* %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer_cb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.evbuffer*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store %struct.evbuffer_cb_info* %1, %struct.evbuffer_cb_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.evbuffer_cb_info*, %struct.evbuffer_cb_info** %5, align 8
  %11 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.evbuffer_cb_info*, %struct.evbuffer_cb_info** %5, align 8
  %15 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  %18 = load %struct.evbuffer_cb_info*, %struct.evbuffer_cb_info** %5, align 8
  %19 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %17, %20
  store i64 %21, i64* %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.evbuffer*
  store %struct.evbuffer* %23, %struct.evbuffer** %9, align 8
  %24 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @evbuffer_add_printf(%struct.evbuffer* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  ret void
}

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
