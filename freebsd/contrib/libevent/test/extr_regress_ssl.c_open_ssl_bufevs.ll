; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_ssl.c_open_ssl_bufevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_ssl.c_open_ssl_bufevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.bufferevent = type { i32 }

@BUFFEREVENT_SSL_OPEN = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_CONNECTING = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_ACCEPTING = common dso_local global i32 0, align 4
@REGRESS_OPENSSL_DIRTY_SHUTDOWN = common dso_local global i32 0, align 4
@respond_to_number = common dso_local global i32 0, align 4
@done_writing_cb = common dso_local global i32 0, align 4
@eventcb = common dso_local global i32 0, align 4
@REGRESS_OPENSSL_CLIENT = common dso_local global i64 0, align 8
@REGRESS_OPENSSL_SERVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent**, %struct.bufferevent**, %struct.event_base*, i32, i32, i32*, i32*, i32*, %struct.bufferevent**, i32)* @open_ssl_bufevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_ssl_bufevs(%struct.bufferevent** %0, %struct.bufferevent** %1, %struct.event_base* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, %struct.bufferevent** %8, i32 %9) #0 {
  %11 = alloca %struct.bufferevent**, align 8
  %12 = alloca %struct.bufferevent**, align 8
  %13 = alloca %struct.event_base*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.bufferevent**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.bufferevent** %0, %struct.bufferevent*** %11, align 8
  store %struct.bufferevent** %1, %struct.bufferevent*** %12, align 8
  store %struct.event_base* %2, %struct.event_base** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store %struct.bufferevent** %8, %struct.bufferevent*** %19, align 8
  store i32 %9, i32* %20, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %10
  %27 = load i32, i32* @BUFFEREVENT_SSL_OPEN, align 4
  br label %30

28:                                               ; preds = %10
  %29 = load i32, i32* @BUFFEREVENT_SSL_CONNECTING, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @BUFFEREVENT_SSL_OPEN, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @BUFFEREVENT_SSL_ACCEPTING, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %22, align 4
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* @REGRESS_OPENSSL_DIRTY_SHUTDOWN, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %23, align 4
  %43 = load i32*, i32** %18, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load %struct.event_base*, %struct.event_base** %13, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base* %46, i32 %49, i32* %50, i32 %51, i32 %52)
  %54 = load %struct.bufferevent**, %struct.bufferevent*** %11, align 8
  store %struct.bufferevent* %53, %struct.bufferevent** %54, align 8
  %55 = load %struct.event_base*, %struct.event_base** %13, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %17, align 8
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base* %55, i32 %58, i32* %59, i32 %60, i32 %61)
  %63 = load %struct.bufferevent**, %struct.bufferevent*** %12, align 8
  store %struct.bufferevent* %62, %struct.bufferevent** %63, align 8
  br label %83

64:                                               ; preds = %38
  %65 = load %struct.event_base*, %struct.event_base** %13, align 8
  %66 = load %struct.bufferevent**, %struct.bufferevent*** %19, align 8
  %67 = getelementptr inbounds %struct.bufferevent*, %struct.bufferevent** %66, i64 0
  %68 = load %struct.bufferevent*, %struct.bufferevent** %67, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call %struct.bufferevent* @bufferevent_openssl_filter_new(%struct.event_base* %65, %struct.bufferevent* %68, i32* %69, i32 %70, i32 %71)
  %73 = load %struct.bufferevent**, %struct.bufferevent*** %11, align 8
  store %struct.bufferevent* %72, %struct.bufferevent** %73, align 8
  %74 = load %struct.event_base*, %struct.event_base** %13, align 8
  %75 = load %struct.bufferevent**, %struct.bufferevent*** %19, align 8
  %76 = getelementptr inbounds %struct.bufferevent*, %struct.bufferevent** %75, i64 1
  %77 = load %struct.bufferevent*, %struct.bufferevent** %76, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = load i32, i32* %22, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call %struct.bufferevent* @bufferevent_openssl_filter_new(%struct.event_base* %74, %struct.bufferevent* %77, i32* %78, i32 %79, i32 %80)
  %82 = load %struct.bufferevent**, %struct.bufferevent*** %12, align 8
  store %struct.bufferevent* %81, %struct.bufferevent** %82, align 8
  br label %83

83:                                               ; preds = %64, %45
  %84 = load %struct.bufferevent**, %struct.bufferevent*** %11, align 8
  %85 = load %struct.bufferevent*, %struct.bufferevent** %84, align 8
  %86 = load i32, i32* @respond_to_number, align 4
  %87 = load i32, i32* @done_writing_cb, align 4
  %88 = load i32, i32* @eventcb, align 4
  %89 = load i64, i64* @REGRESS_OPENSSL_CLIENT, align 8
  %90 = load i32, i32* %20, align 4
  %91 = zext i32 %90 to i64
  %92 = or i64 %89, %91
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @bufferevent_setcb(%struct.bufferevent* %85, i32 %86, i32 %87, i32 %88, i8* %93)
  %95 = load %struct.bufferevent**, %struct.bufferevent*** %12, align 8
  %96 = load %struct.bufferevent*, %struct.bufferevent** %95, align 8
  %97 = load i32, i32* @respond_to_number, align 4
  %98 = load i32, i32* @done_writing_cb, align 4
  %99 = load i32, i32* @eventcb, align 4
  %100 = load i64, i64* @REGRESS_OPENSSL_SERVER, align 8
  %101 = load i32, i32* %20, align 4
  %102 = zext i32 %101 to i64
  %103 = or i64 %100, %102
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @bufferevent_setcb(%struct.bufferevent* %96, i32 %97, i32 %98, i32 %99, i8* %104)
  %106 = load %struct.bufferevent**, %struct.bufferevent*** %11, align 8
  %107 = load %struct.bufferevent*, %struct.bufferevent** %106, align 8
  %108 = load i32, i32* %23, align 4
  %109 = call i32 @bufferevent_openssl_set_allow_dirty_shutdown(%struct.bufferevent* %107, i32 %108)
  %110 = load %struct.bufferevent**, %struct.bufferevent*** %12, align 8
  %111 = load %struct.bufferevent*, %struct.bufferevent** %110, align 8
  %112 = load i32, i32* %23, align 4
  %113 = call i32 @bufferevent_openssl_set_allow_dirty_shutdown(%struct.bufferevent* %111, i32 %112)
  ret void
}

declare dso_local %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base*, i32, i32*, i32, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_filter_new(%struct.event_base*, %struct.bufferevent*, i32*, i32, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32, i32, i8*) #1

declare dso_local i32 @bufferevent_openssl_set_allow_dirty_shutdown(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
