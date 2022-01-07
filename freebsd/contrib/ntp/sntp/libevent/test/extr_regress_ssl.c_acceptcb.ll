; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_ssl.c_acceptcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_ssl.c_acceptcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i32 }
%struct.sockaddr = type { i32 }
%struct.basic_test_data = type { i32 }
%struct.bufferevent = type { i32 }

@BUFFEREVENT_SSL_ACCEPTING = common dso_local global i32 0, align 4
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@respond_to_number = common dso_local global i32 0, align 4
@eventcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"server\00", align 1
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
  %13 = alloca i32*, align 8
  store %struct.evconnlistener* %0, %struct.evconnlistener** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.basic_test_data*
  store %struct.basic_test_data* %15, %struct.basic_test_data** %11, align 8
  %16 = call i32 (...) @get_ssl_ctx()
  %17 = call i32* @SSL_new(i32 %16)
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = call i32 (...) @getcert()
  %20 = call i32 @SSL_use_certificate(i32* %18, i32 %19)
  %21 = load i32*, i32** %13, align 8
  %22 = call i32 (...) @getkey()
  %23 = call i32 @SSL_use_PrivateKey(i32* %21, i32 %22)
  %24 = load %struct.basic_test_data*, %struct.basic_test_data** %11, align 8
  %25 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* @BUFFEREVENT_SSL_ACCEPTING, align 4
  %30 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %31 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.bufferevent* @bufferevent_openssl_socket_new(i32 %26, i32 %27, i32* %28, i32 %29, i32 %32)
  store %struct.bufferevent* %33, %struct.bufferevent** %12, align 8
  %34 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %35 = load i32, i32* @respond_to_number, align 4
  %36 = load i32, i32* @eventcb, align 4
  %37 = call i32 @bufferevent_setcb(%struct.bufferevent* %34, i32 %35, i32* null, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %39 = load i32, i32* @EV_READ, align 4
  %40 = load i32, i32* @EV_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @bufferevent_enable(%struct.bufferevent* %38, i32 %41)
  %43 = load %struct.evconnlistener*, %struct.evconnlistener** %6, align 8
  %44 = call i32 @evconnlistener_disable(%struct.evconnlistener* %43)
  ret void
}

declare dso_local i32* @SSL_new(i32) #1

declare dso_local i32 @get_ssl_ctx(...) #1

declare dso_local i32 @SSL_use_certificate(i32*, i32) #1

declare dso_local i32 @getcert(...) #1

declare dso_local i32 @SSL_use_PrivateKey(i32*, i32) #1

declare dso_local i32 @getkey(...) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_socket_new(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32*, i32, i8*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @evconnlistener_disable(%struct.evconnlistener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
