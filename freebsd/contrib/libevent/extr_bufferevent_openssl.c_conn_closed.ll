; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_conn_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_conn_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@BEV_EVENT_ERROR = common dso_local global i32 0, align 4
@SSL_RECEIVED_SHUTDOWN = common dso_local global i32 0, align 4
@BEV_EVENT_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BUG: Unexpected OpenSSL error code %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent_openssl*, i32, i32, i32)* @conn_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_closed(%struct.bufferevent_openssl* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bufferevent_openssl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @BEV_EVENT_ERROR, align 4
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %40 [
    i32 128, label %14
    i32 134, label %26
    i32 135, label %37
    i32 129, label %38
    i32 136, label %39
    i32 131, label %39
    i32 130, label %39
    i32 132, label %39
    i32 133, label %39
  ]

14:                                               ; preds = %4
  %15 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %16 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @SSL_get_shutdown(i32 %17)
  %19 = load i32, i32* @SSL_RECEIVED_SHUTDOWN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @BEV_EVENT_EOF, align 4
  store i32 %23, i32* %9, align 4
  br label %25

24:                                               ; preds = %14
  store i32 1, i32* %10, align 4
  br label %25

25:                                               ; preds = %24, %22
  br label %43

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29, %26
  %33 = call i32 (...) @ERR_peek_error()
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %32, %29
  br label %43

37:                                               ; preds = %4
  br label %43

38:                                               ; preds = %4
  br label %43

39:                                               ; preds = %4, %4, %4, %4, %4
  br label %40

40:                                               ; preds = %4, %39
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @event_warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %38, %37, %36, %25
  br label %44

44:                                               ; preds = %47, %43
  %45 = call i64 (...) @ERR_get_error()
  store i64 %45, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @put_error(%struct.bufferevent_openssl* %48, i64 %49)
  br label %44

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %56 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @BEV_EVENT_EOF, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %54, %51
  %62 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %63 = call i32 @stop_reading(%struct.bufferevent_openssl* %62)
  %64 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %65 = call i32 @stop_writing(%struct.bufferevent_openssl* %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %70 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @bufferevent_run_eventcb_(i32* %71, i32 %72, i32 0)
  ret void
}

declare dso_local i32 @SSL_get_shutdown(i32) #1

declare dso_local i32 @ERR_peek_error(...) #1

declare dso_local i32 @event_warnx(i8*, i32) #1

declare dso_local i64 @ERR_get_error(...) #1

declare dso_local i32 @put_error(%struct.bufferevent_openssl*, i64) #1

declare dso_local i32 @stop_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @stop_writing(%struct.bufferevent_openssl*) #1

declare dso_local i32 @bufferevent_run_eventcb_(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
