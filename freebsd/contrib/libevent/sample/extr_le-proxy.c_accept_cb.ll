; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_le-proxy.c_accept_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_le-proxy.c_accept_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i32 }
%struct.sockaddr = type { i32 }
%struct.bufferevent = type { i32 }

@base = common dso_local global i32 0, align 4
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@ssl_ctx = common dso_local global i64 0, align 8
@use_wrapper = common dso_local global i64 0, align 8
@BUFFEREVENT_SSL_CONNECTING = common dso_local global i32 0, align 4
@connect_to_addr = common dso_local global i32 0, align 4
@connect_to_addrlen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bufferevent_socket_connect\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Bufferevent_openssl_new\00", align 1
@readcb = common dso_local global i32 0, align 4
@eventcb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evconnlistener*, i32, %struct.sockaddr*, i32, i8*)* @accept_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accept_cb(%struct.evconnlistener* %0, i32 %1, %struct.sockaddr* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evconnlistener*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.bufferevent*, align 8
  %12 = alloca %struct.bufferevent*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bufferevent*, align 8
  %15 = alloca i32*, align 8
  store %struct.evconnlistener* %0, %struct.evconnlistener** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i32, i32* @base, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %19 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.bufferevent* @bufferevent_socket_new(i32 %16, i32 %17, i32 %20)
  store %struct.bufferevent* %21, %struct.bufferevent** %12, align 8
  %22 = load i64, i64* @ssl_ctx, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i64, i64* @use_wrapper, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24, %5
  %28 = load i32, i32* @base, align 4
  %29 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %30 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.bufferevent* @bufferevent_socket_new(i32 %28, i32 -1, i32 %31)
  store %struct.bufferevent* %32, %struct.bufferevent** %11, align 8
  br label %43

33:                                               ; preds = %24
  %34 = load i64, i64* @ssl_ctx, align 8
  %35 = call i32* @SSL_new(i64 %34)
  store i32* %35, i32** %13, align 8
  %36 = load i32, i32* @base, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* @BUFFEREVENT_SSL_CONNECTING, align 4
  %39 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %40 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.bufferevent* @bufferevent_openssl_socket_new(i32 %36, i32 -1, i32* %37, i32 %38, i32 %41)
  store %struct.bufferevent* %42, %struct.bufferevent** %11, align 8
  br label %43

43:                                               ; preds = %33, %27
  %44 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %45 = icmp ne %struct.bufferevent* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.bufferevent*, %struct.bufferevent** %11, align 8
  %48 = icmp ne %struct.bufferevent* %47, null
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.bufferevent*, %struct.bufferevent** %11, align 8
  %54 = load i32, i32* @connect_to_addrlen, align 4
  %55 = call i64 @bufferevent_socket_connect(%struct.bufferevent* %53, %struct.sockaddr* bitcast (i32* @connect_to_addr to %struct.sockaddr*), i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.bufferevent*, %struct.bufferevent** %11, align 8
  %60 = call i32 @bufferevent_free(%struct.bufferevent* %59)
  %61 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %62 = call i32 @bufferevent_free(%struct.bufferevent* %61)
  br label %111

63:                                               ; preds = %49
  %64 = load i64, i64* @ssl_ctx, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %63
  %67 = load i64, i64* @use_wrapper, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = load i64, i64* @ssl_ctx, align 8
  %71 = call i32* @SSL_new(i64 %70)
  store i32* %71, i32** %15, align 8
  %72 = load i32, i32* @base, align 4
  %73 = load %struct.bufferevent*, %struct.bufferevent** %11, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* @BUFFEREVENT_SSL_CONNECTING, align 4
  %76 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %77 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %78 = or i32 %76, %77
  %79 = call %struct.bufferevent* @bufferevent_openssl_filter_new(i32 %72, %struct.bufferevent* %73, i32* %74, i32 %75, i32 %78)
  store %struct.bufferevent* %79, %struct.bufferevent** %14, align 8
  %80 = load %struct.bufferevent*, %struct.bufferevent** %14, align 8
  %81 = icmp ne %struct.bufferevent* %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %69
  %83 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.bufferevent*, %struct.bufferevent** %11, align 8
  %85 = call i32 @bufferevent_free(%struct.bufferevent* %84)
  %86 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %87 = call i32 @bufferevent_free(%struct.bufferevent* %86)
  br label %88

88:                                               ; preds = %82, %69
  %89 = load %struct.bufferevent*, %struct.bufferevent** %14, align 8
  store %struct.bufferevent* %89, %struct.bufferevent** %11, align 8
  br label %90

90:                                               ; preds = %88, %66, %63
  %91 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %92 = load i32, i32* @readcb, align 4
  %93 = load i32, i32* @eventcb, align 4
  %94 = load %struct.bufferevent*, %struct.bufferevent** %11, align 8
  %95 = call i32 @bufferevent_setcb(%struct.bufferevent* %91, i32 %92, i32* null, i32 %93, %struct.bufferevent* %94)
  %96 = load %struct.bufferevent*, %struct.bufferevent** %11, align 8
  %97 = load i32, i32* @readcb, align 4
  %98 = load i32, i32* @eventcb, align 4
  %99 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %100 = call i32 @bufferevent_setcb(%struct.bufferevent* %96, i32 %97, i32* null, i32 %98, %struct.bufferevent* %99)
  %101 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %102 = load i32, i32* @EV_READ, align 4
  %103 = load i32, i32* @EV_WRITE, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @bufferevent_enable(%struct.bufferevent* %101, i32 %104)
  %106 = load %struct.bufferevent*, %struct.bufferevent** %11, align 8
  %107 = load i32, i32* @EV_READ, align 4
  %108 = load i32, i32* @EV_WRITE, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @bufferevent_enable(%struct.bufferevent* %106, i32 %109)
  br label %111

111:                                              ; preds = %90, %57
  ret void
}

declare dso_local %struct.bufferevent* @bufferevent_socket_new(i32, i32, i32) #1

declare dso_local i32* @SSL_new(i64) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_socket_new(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bufferevent_socket_connect(%struct.bufferevent*, %struct.sockaddr*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_filter_new(i32, %struct.bufferevent*, i32*, i32, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32*, i32, %struct.bufferevent*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
