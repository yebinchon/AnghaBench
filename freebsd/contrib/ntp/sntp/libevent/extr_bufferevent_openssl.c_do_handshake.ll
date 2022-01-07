; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_do_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_do_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@BEV_EVENT_CONNECTED = common dso_local global i32 0, align 4
@BEV_EVENT_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*)* @do_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_handshake(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufferevent_openssl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %3, align 8
  %6 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %7 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %9 [
    i32 130, label %10
    i32 131, label %12
    i32 132, label %12
  ]

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %1, %9
  %11 = call i32 @EVUTIL_ASSERT(i32 0)
  store i32 -1, i32* %2, align 4
  br label %78

12:                                               ; preds = %1, %1
  %13 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %14 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SSL_do_handshake(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %12
  %18 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %19 = call i32 @decrement_buckets(%struct.bufferevent_openssl* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %24 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %23, i32 0, i32 0
  store i32 130, i32* %24, align 4
  %25 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %26 = call i32 @set_open_callbacks(%struct.bufferevent_openssl* %25, i32 -1)
  %27 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %28 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %31 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bufferevent_enable(%struct.TYPE_5__* %29, i32 %34)
  %36 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %37 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* @BEV_EVENT_CONNECTED, align 4
  %40 = call i32 @bufferevent_run_eventcb_(%struct.TYPE_5__* %38, i32 %39, i32 0)
  store i32 1, i32* %2, align 4
  br label %78

41:                                               ; preds = %17
  %42 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %43 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @SSL_get_error(i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @print_err(i32 %47)
  %49 = load i32, i32* %5, align 4
  switch i32 %49, label %72 [
    i32 128, label %50
    i32 129, label %61
  ]

50:                                               ; preds = %41
  %51 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %52 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %57 = call i32 @stop_reading(%struct.bufferevent_openssl* %56)
  %58 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %59 = call i32 @start_writing(%struct.bufferevent_openssl* %58)
  store i32 %59, i32* %2, align 4
  br label %78

60:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %78

61:                                               ; preds = %41
  %62 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %63 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %68 = call i32 @stop_writing(%struct.bufferevent_openssl* %67)
  %69 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %70 = call i32 @start_reading(%struct.bufferevent_openssl* %69)
  store i32 %70, i32* %2, align 4
  br label %78

71:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %78

72:                                               ; preds = %41
  %73 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %74 = load i32, i32* @BEV_EVENT_READING, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @conn_closed(%struct.bufferevent_openssl* %73, i32 %74, i32 %75, i32 %76)
  store i32 -1, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %71, %66, %60, %55, %22, %10
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @SSL_do_handshake(i32) #1

declare dso_local i32 @decrement_buckets(%struct.bufferevent_openssl*) #1

declare dso_local i32 @set_open_callbacks(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @bufferevent_enable(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i32 @print_err(i32) #1

declare dso_local i32 @stop_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @start_writing(%struct.bufferevent_openssl*) #1

declare dso_local i32 @stop_writing(%struct.bufferevent_openssl*) #1

declare dso_local i32 @start_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @conn_closed(%struct.bufferevent_openssl*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
