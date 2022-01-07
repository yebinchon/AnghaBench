; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_rpc.c_http_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_rpc.c_http_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }
%struct.evhttp_bound_socket = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Could not start web server\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Couldn't open web port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evhttp* (i32*)* @http_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evhttp* @http_setup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.evhttp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp_bound_socket*, align 8
  store i32* %0, i32** %2, align 8
  %6 = call %struct.evhttp* @evhttp_new(i32* null)
  store %struct.evhttp* %6, %struct.evhttp** %3, align 8
  %7 = load %struct.evhttp*, %struct.evhttp** %3, align 8
  %8 = icmp ne %struct.evhttp* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @event_errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.evhttp*, %struct.evhttp** %3, align 8
  %13 = call %struct.evhttp_bound_socket* @evhttp_bind_socket_with_handle(%struct.evhttp* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.evhttp_bound_socket* %13, %struct.evhttp_bound_socket** %5, align 8
  %14 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %5, align 8
  %15 = icmp ne %struct.evhttp_bound_socket* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 @event_errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %5, align 8
  %20 = call i32 @evhttp_bound_socket_get_fd(%struct.evhttp_bound_socket* %19)
  %21 = call i32 @regress_get_socket_port(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %2, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.evhttp*, %struct.evhttp** %3, align 8
  ret %struct.evhttp* %24
}

declare dso_local %struct.evhttp* @evhttp_new(i32*) #1

declare dso_local i32 @event_errx(i32, i8*) #1

declare dso_local %struct.evhttp_bound_socket* @evhttp_bind_socket_with_handle(%struct.evhttp*, i8*, i32) #1

declare dso_local i32 @regress_get_socket_port(i32) #1

declare dso_local i32 @evhttp_bound_socket_get_fd(%struct.evhttp_bound_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
