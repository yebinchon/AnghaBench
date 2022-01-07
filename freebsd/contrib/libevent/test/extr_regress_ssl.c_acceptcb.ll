; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_ssl.c_acceptcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_ssl.c_acceptcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.evconnlistener = type { i32 }
%struct.sockaddr = type { i32 }
%struct.basic_test_data = type { i32, i64 }
%struct.bufferevent = type { i32 }

@BUFFEREVENT_SSL_ACCEPTING = common dso_local global i32 0, align 4
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@respond_to_number = common dso_local global i32 0, align 4
@eventcb = common dso_local global i32 0, align 4
@REGRESS_OPENSSL_SERVER = common dso_local global i64 0, align 8
@REGRESS_OPENSSL_SLEEP = common dso_local global i32 0, align 4
@__const.acceptcb.when = private unnamed_addr constant %struct.timeval { i32 1, i32 0 }, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4
@acceptcb_deferred = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evconnlistener*, i32, %struct.sockaddr*, i32, i8*)* @acceptcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acceptcb(%struct.evconnlistener* %0, i32 %1, %struct.sockaddr* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evconnlistener*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.basic_test_data*, align 8
  %12 = alloca %struct.bufferevent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.timeval, align 4
  store %struct.evconnlistener* %0, %struct.evconnlistener** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.basic_test_data*
  store %struct.basic_test_data* %17, %struct.basic_test_data** %11, align 8
  %18 = call i32 (...) @get_ssl_ctx()
  %19 = call i32* @SSL_new(i32 %18)
  store i32* %19, i32** %14, align 8
  %20 = load %struct.basic_test_data*, %struct.basic_test_data** %11, align 8
  %21 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %14, align 8
  %25 = call i32 (...) @ssl_getcert()
  %26 = call i32 @SSL_use_certificate(i32* %24, i32 %25)
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 (...) @ssl_getkey()
  %29 = call i32 @SSL_use_PrivateKey(i32* %27, i32 %28)
  %30 = load %struct.basic_test_data*, %struct.basic_test_data** %11, align 8
  %31 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* @BUFFEREVENT_SSL_ACCEPTING, align 4
  %36 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %37 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.bufferevent* @bufferevent_openssl_socket_new(i32 %32, i32 %33, i32* %34, i32 %35, i32 %38)
  store %struct.bufferevent* %39, %struct.bufferevent** %12, align 8
  %40 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %41 = load i32, i32* @respond_to_number, align 4
  %42 = load i32, i32* @eventcb, align 4
  %43 = load i64, i64* @REGRESS_OPENSSL_SERVER, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @bufferevent_setcb(%struct.bufferevent* %40, i32 %41, i32* null, i32 %42, i8* %44)
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @REGRESS_OPENSSL_SLEEP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %5
  %51 = bitcast %struct.timeval* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 bitcast (%struct.timeval* @__const.acceptcb.when to i8*), i64 8, i1 false)
  %52 = load %struct.basic_test_data*, %struct.basic_test_data** %11, align 8
  %53 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @EV_TIMEOUT, align 4
  %56 = load i32, i32* @acceptcb_deferred, align 4
  %57 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %58 = call i32 @event_base_once(i32 %54, i32 -1, i32 %55, i32 %56, %struct.bufferevent* %57, %struct.timeval* %15)
  %59 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %60 = load i32, i32* @EV_READ, align 4
  %61 = load i32, i32* @EV_WRITE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @bufferevent_disable(%struct.bufferevent* %59, i32 %62)
  br label %70

64:                                               ; preds = %5
  %65 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %66 = load i32, i32* @EV_READ, align 4
  %67 = load i32, i32* @EV_WRITE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @bufferevent_enable(%struct.bufferevent* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %50
  %71 = load %struct.evconnlistener*, %struct.evconnlistener** %6, align 8
  %72 = call i32 @evconnlistener_disable(%struct.evconnlistener* %71)
  ret void
}

declare dso_local i32* @SSL_new(i32) #1

declare dso_local i32 @get_ssl_ctx(...) #1

declare dso_local i32 @SSL_use_certificate(i32*, i32) #1

declare dso_local i32 @ssl_getcert(...) #1

declare dso_local i32 @SSL_use_PrivateKey(i32*, i32) #1

declare dso_local i32 @ssl_getkey(...) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_socket_new(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @event_base_once(i32, i32, i32, i32, %struct.bufferevent*, %struct.timeval*) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @evconnlistener_disable(%struct.evconnlistener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
