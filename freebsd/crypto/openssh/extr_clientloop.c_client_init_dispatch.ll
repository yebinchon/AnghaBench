; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_init_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_init_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@client_input_channel_open = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_OPEN_CONFIRMATION = common dso_local global i32 0, align 4
@channel_input_open_confirmation = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_OPEN_FAILURE = common dso_local global i32 0, align 4
@channel_input_open_failure = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_REQUEST = common dso_local global i32 0, align 4
@client_input_channel_req = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_WINDOW_ADJUST = common dso_local global i32 0, align 4
@channel_input_window_adjust = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_SUCCESS = common dso_local global i32 0, align 4
@channel_input_status_confirm = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_FAILURE = common dso_local global i32 0, align 4
@SSH2_MSG_GLOBAL_REQUEST = common dso_local global i32 0, align 4
@client_input_global_request = common dso_local global i32 0, align 4
@SSH2_MSG_KEXINIT = common dso_local global i32 0, align 4
@kex_input_kexinit = common dso_local global i32 0, align 4
@SSH2_MSG_REQUEST_FAILURE = common dso_local global i32 0, align 4
@client_global_request_reply = common dso_local global i32 0, align 4
@SSH2_MSG_REQUEST_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @client_init_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_init_dispatch() #0 {
  %1 = call i32 @dispatch_init(i32* @dispatch_protocol_error)
  %2 = load i32, i32* @SSH2_MSG_CHANNEL_CLOSE, align 4
  %3 = call i32 @dispatch_set(i32 %2, i32* @channel_input_oclose)
  %4 = load i32, i32* @SSH2_MSG_CHANNEL_DATA, align 4
  %5 = call i32 @dispatch_set(i32 %4, i32* @channel_input_data)
  %6 = load i32, i32* @SSH2_MSG_CHANNEL_EOF, align 4
  %7 = call i32 @dispatch_set(i32 %6, i32* @channel_input_ieof)
  %8 = load i32, i32* @SSH2_MSG_CHANNEL_EXTENDED_DATA, align 4
  %9 = call i32 @dispatch_set(i32 %8, i32* @channel_input_extended_data)
  %10 = load i32, i32* @SSH2_MSG_CHANNEL_OPEN, align 4
  %11 = call i32 @dispatch_set(i32 %10, i32* @client_input_channel_open)
  %12 = load i32, i32* @SSH2_MSG_CHANNEL_OPEN_CONFIRMATION, align 4
  %13 = call i32 @dispatch_set(i32 %12, i32* @channel_input_open_confirmation)
  %14 = load i32, i32* @SSH2_MSG_CHANNEL_OPEN_FAILURE, align 4
  %15 = call i32 @dispatch_set(i32 %14, i32* @channel_input_open_failure)
  %16 = load i32, i32* @SSH2_MSG_CHANNEL_REQUEST, align 4
  %17 = call i32 @dispatch_set(i32 %16, i32* @client_input_channel_req)
  %18 = load i32, i32* @SSH2_MSG_CHANNEL_WINDOW_ADJUST, align 4
  %19 = call i32 @dispatch_set(i32 %18, i32* @channel_input_window_adjust)
  %20 = load i32, i32* @SSH2_MSG_CHANNEL_SUCCESS, align 4
  %21 = call i32 @dispatch_set(i32 %20, i32* @channel_input_status_confirm)
  %22 = load i32, i32* @SSH2_MSG_CHANNEL_FAILURE, align 4
  %23 = call i32 @dispatch_set(i32 %22, i32* @channel_input_status_confirm)
  %24 = load i32, i32* @SSH2_MSG_GLOBAL_REQUEST, align 4
  %25 = call i32 @dispatch_set(i32 %24, i32* @client_input_global_request)
  %26 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %27 = call i32 @dispatch_set(i32 %26, i32* @kex_input_kexinit)
  %28 = load i32, i32* @SSH2_MSG_REQUEST_FAILURE, align 4
  %29 = call i32 @dispatch_set(i32 %28, i32* @client_global_request_reply)
  %30 = load i32, i32* @SSH2_MSG_REQUEST_SUCCESS, align 4
  %31 = call i32 @dispatch_set(i32 %30, i32* @client_global_request_reply)
  ret void
}

declare dso_local i32 @dispatch_init(i32*) #1

declare dso_local i32 @dispatch_set(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
