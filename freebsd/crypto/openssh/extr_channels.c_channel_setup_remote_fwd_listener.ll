; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_setup_remote_fwd_listener.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_setup_remote_fwd_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.Forward = type { i32* }
%struct.ForwardOptions = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"port forwarding refused\00", align 1
@SSH_CHANNEL_RUNIX_LISTENER = common dso_local global i32 0, align 4
@SSH_CHANNEL_RPORT_LISTENER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @channel_setup_remote_fwd_listener(%struct.ssh* %0, %struct.Forward* %1, i32* %2, %struct.ForwardOptions* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.Forward*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ForwardOptions*, align 8
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store %struct.Forward* %1, %struct.Forward** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.ForwardOptions* %3, %struct.ForwardOptions** %9, align 8
  %10 = load %struct.ssh*, %struct.ssh** %6, align 8
  %11 = load %struct.Forward*, %struct.Forward** %7, align 8
  %12 = call i32 @check_rfwd_permission(%struct.ssh* %10, %struct.Forward* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = call i32 @packet_send_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %34

16:                                               ; preds = %4
  %17 = load %struct.Forward*, %struct.Forward** %7, align 8
  %18 = getelementptr inbounds %struct.Forward, %struct.Forward* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.ssh*, %struct.ssh** %6, align 8
  %23 = load i32, i32* @SSH_CHANNEL_RUNIX_LISTENER, align 4
  %24 = load %struct.Forward*, %struct.Forward** %7, align 8
  %25 = load %struct.ForwardOptions*, %struct.ForwardOptions** %9, align 8
  %26 = call i32 @channel_setup_fwd_listener_streamlocal(%struct.ssh* %22, i32 %23, %struct.Forward* %24, %struct.ForwardOptions* %25)
  store i32 %26, i32* %5, align 4
  br label %34

27:                                               ; preds = %16
  %28 = load %struct.ssh*, %struct.ssh** %6, align 8
  %29 = load i32, i32* @SSH_CHANNEL_RPORT_LISTENER, align 4
  %30 = load %struct.Forward*, %struct.Forward** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.ForwardOptions*, %struct.ForwardOptions** %9, align 8
  %33 = call i32 @channel_setup_fwd_listener_tcpip(%struct.ssh* %28, i32 %29, %struct.Forward* %30, i32* %31, %struct.ForwardOptions* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %21, %14
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @check_rfwd_permission(%struct.ssh*, %struct.Forward*) #1

declare dso_local i32 @packet_send_debug(i8*) #1

declare dso_local i32 @channel_setup_fwd_listener_streamlocal(%struct.ssh*, i32, %struct.Forward*, %struct.ForwardOptions*) #1

declare dso_local i32 @channel_setup_fwd_listener_tcpip(%struct.ssh*, i32, %struct.Forward*, i32*, %struct.ForwardOptions*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
