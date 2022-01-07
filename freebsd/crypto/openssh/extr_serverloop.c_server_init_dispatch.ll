; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_server_init_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_server_init_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"server_init_dispatch\00", align 1
@dispatch_protocol_error = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_CLOSE = common dso_local global i32 0, align 4
@channel_input_oclose = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_DATA = common dso_local global i32 0, align 4
@channel_input_data = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_EOF = common dso_local global i32 0, align 4
@channel_input_ieof = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_EXTENDED_DATA = common dso_local global i32 0, align 4
@channel_input_extended_data = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_OPEN = common dso_local global i32 0, align 4
@server_input_channel_open = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_OPEN_CONFIRMATION = common dso_local global i32 0, align 4
@channel_input_open_confirmation = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_OPEN_FAILURE = common dso_local global i32 0, align 4
@channel_input_open_failure = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_REQUEST = common dso_local global i32 0, align 4
@server_input_channel_req = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_WINDOW_ADJUST = common dso_local global i32 0, align 4
@channel_input_window_adjust = common dso_local global i32 0, align 4
@SSH2_MSG_GLOBAL_REQUEST = common dso_local global i32 0, align 4
@server_input_global_request = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_SUCCESS = common dso_local global i32 0, align 4
@server_input_keep_alive = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_FAILURE = common dso_local global i32 0, align 4
@SSH2_MSG_REQUEST_SUCCESS = common dso_local global i32 0, align 4
@SSH2_MSG_REQUEST_FAILURE = common dso_local global i32 0, align 4
@SSH2_MSG_KEXINIT = common dso_local global i32 0, align 4
@kex_input_kexinit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @server_init_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_init_dispatch() #0 {
  %1 = call i32 @debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @dispatch_init(i32* @dispatch_protocol_error)
  %3 = load i32, i32* @SSH2_MSG_CHANNEL_CLOSE, align 4
  %4 = call i32 @dispatch_set(i32 %3, i32* @channel_input_oclose)
  %5 = load i32, i32* @SSH2_MSG_CHANNEL_DATA, align 4
  %6 = call i32 @dispatch_set(i32 %5, i32* @channel_input_data)
  %7 = load i32, i32* @SSH2_MSG_CHANNEL_EOF, align 4
  %8 = call i32 @dispatch_set(i32 %7, i32* @channel_input_ieof)
  %9 = load i32, i32* @SSH2_MSG_CHANNEL_EXTENDED_DATA, align 4
  %10 = call i32 @dispatch_set(i32 %9, i32* @channel_input_extended_data)
  %11 = load i32, i32* @SSH2_MSG_CHANNEL_OPEN, align 4
  %12 = call i32 @dispatch_set(i32 %11, i32* @server_input_channel_open)
  %13 = load i32, i32* @SSH2_MSG_CHANNEL_OPEN_CONFIRMATION, align 4
  %14 = call i32 @dispatch_set(i32 %13, i32* @channel_input_open_confirmation)
  %15 = load i32, i32* @SSH2_MSG_CHANNEL_OPEN_FAILURE, align 4
  %16 = call i32 @dispatch_set(i32 %15, i32* @channel_input_open_failure)
  %17 = load i32, i32* @SSH2_MSG_CHANNEL_REQUEST, align 4
  %18 = call i32 @dispatch_set(i32 %17, i32* @server_input_channel_req)
  %19 = load i32, i32* @SSH2_MSG_CHANNEL_WINDOW_ADJUST, align 4
  %20 = call i32 @dispatch_set(i32 %19, i32* @channel_input_window_adjust)
  %21 = load i32, i32* @SSH2_MSG_GLOBAL_REQUEST, align 4
  %22 = call i32 @dispatch_set(i32 %21, i32* @server_input_global_request)
  %23 = load i32, i32* @SSH2_MSG_CHANNEL_SUCCESS, align 4
  %24 = call i32 @dispatch_set(i32 %23, i32* @server_input_keep_alive)
  %25 = load i32, i32* @SSH2_MSG_CHANNEL_FAILURE, align 4
  %26 = call i32 @dispatch_set(i32 %25, i32* @server_input_keep_alive)
  %27 = load i32, i32* @SSH2_MSG_REQUEST_SUCCESS, align 4
  %28 = call i32 @dispatch_set(i32 %27, i32* @server_input_keep_alive)
  %29 = load i32, i32* @SSH2_MSG_REQUEST_FAILURE, align 4
  %30 = call i32 @dispatch_set(i32 %29, i32* @server_input_keep_alive)
  %31 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %32 = call i32 @dispatch_set(i32 %31, i32* @kex_input_kexinit)
  ret void
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @dispatch_init(i32*) #1

declare dso_local i32 @dispatch_set(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
