; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_ssl.c_open_ssl_bufevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_ssl.c_open_ssl_bufevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.bufferevent = type { i32 }

@BUFFEREVENT_SSL_OPEN = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_CONNECTING = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_ACCEPTING = common dso_local global i32 0, align 4
@respond_to_number = common dso_local global i32 0, align 4
@done_writing_cb = common dso_local global i32 0, align 4
@eventcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent**, %struct.bufferevent**, %struct.event_base*, i32, i32, i32*, i32*, i32*, %struct.bufferevent**)* @open_ssl_bufevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_ssl_bufevs(%struct.bufferevent** %0, %struct.bufferevent** %1, %struct.event_base* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, %struct.bufferevent** %8) #0 {
  %10 = alloca %struct.bufferevent**, align 8
  %11 = alloca %struct.bufferevent**, align 8
  %12 = alloca %struct.event_base*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.bufferevent**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.bufferevent** %0, %struct.bufferevent*** %10, align 8
  store %struct.bufferevent** %1, %struct.bufferevent*** %11, align 8
  store %struct.event_base* %2, %struct.event_base** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store %struct.bufferevent** %8, %struct.bufferevent*** %18, align 8
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %9
  %24 = load i32, i32* @BUFFEREVENT_SSL_OPEN, align 4
  br label %27

25:                                               ; preds = %9
  %26 = load i32, i32* @BUFFEREVENT_SSL_CONNECTING, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @BUFFEREVENT_SSL_OPEN, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @BUFFEREVENT_SSL_ACCEPTING, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %20, align 4
  %37 = load i32*, i32** %17, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load %struct.event_base*, %struct.event_base** %12, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base* %40, i32 %43, i32* %44, i32 %45, i32 %46)
  %48 = load %struct.bufferevent**, %struct.bufferevent*** %10, align 8
  store %struct.bufferevent* %47, %struct.bufferevent** %48, align 8
  %49 = load %struct.event_base*, %struct.event_base** %12, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base* %49, i32 %52, i32* %53, i32 %54, i32 %55)
  %57 = load %struct.bufferevent**, %struct.bufferevent*** %11, align 8
  store %struct.bufferevent* %56, %struct.bufferevent** %57, align 8
  br label %77

58:                                               ; preds = %35
  %59 = load %struct.event_base*, %struct.event_base** %12, align 8
  %60 = load %struct.bufferevent**, %struct.bufferevent*** %18, align 8
  %61 = getelementptr inbounds %struct.bufferevent*, %struct.bufferevent** %60, i64 0
  %62 = load %struct.bufferevent*, %struct.bufferevent** %61, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call %struct.bufferevent* @bufferevent_openssl_filter_new(%struct.event_base* %59, %struct.bufferevent* %62, i32* %63, i32 %64, i32 %65)
  %67 = load %struct.bufferevent**, %struct.bufferevent*** %10, align 8
  store %struct.bufferevent* %66, %struct.bufferevent** %67, align 8
  %68 = load %struct.event_base*, %struct.event_base** %12, align 8
  %69 = load %struct.bufferevent**, %struct.bufferevent*** %18, align 8
  %70 = getelementptr inbounds %struct.bufferevent*, %struct.bufferevent** %69, i64 1
  %71 = load %struct.bufferevent*, %struct.bufferevent** %70, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call %struct.bufferevent* @bufferevent_openssl_filter_new(%struct.event_base* %68, %struct.bufferevent* %71, i32* %72, i32 %73, i32 %74)
  %76 = load %struct.bufferevent**, %struct.bufferevent*** %11, align 8
  store %struct.bufferevent* %75, %struct.bufferevent** %76, align 8
  br label %77

77:                                               ; preds = %58, %39
  %78 = load %struct.bufferevent**, %struct.bufferevent*** %10, align 8
  %79 = load %struct.bufferevent*, %struct.bufferevent** %78, align 8
  %80 = load i32, i32* @respond_to_number, align 4
  %81 = load i32, i32* @done_writing_cb, align 4
  %82 = load i32, i32* @eventcb, align 4
  %83 = call i32 @bufferevent_setcb(%struct.bufferevent* %79, i32 %80, i32 %81, i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.bufferevent**, %struct.bufferevent*** %11, align 8
  %85 = load %struct.bufferevent*, %struct.bufferevent** %84, align 8
  %86 = load i32, i32* @respond_to_number, align 4
  %87 = load i32, i32* @done_writing_cb, align 4
  %88 = load i32, i32* @eventcb, align 4
  %89 = call i32 @bufferevent_setcb(%struct.bufferevent* %85, i32 %86, i32 %87, i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base*, i32, i32*, i32, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_filter_new(%struct.event_base*, %struct.bufferevent*, i32*, i32, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
