; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_setup_local_fwd_listener.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_setup_local_fwd_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.Forward = type { i32* }
%struct.ForwardOptions = type { i32 }

@SSH_CHANNEL_UNIX_LISTENER = common dso_local global i32 0, align 4
@SSH_CHANNEL_PORT_LISTENER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @channel_setup_local_fwd_listener(%struct.ssh* %0, %struct.Forward* %1, %struct.ForwardOptions* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca %struct.Forward*, align 8
  %7 = alloca %struct.ForwardOptions*, align 8
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store %struct.Forward* %1, %struct.Forward** %6, align 8
  store %struct.ForwardOptions* %2, %struct.ForwardOptions** %7, align 8
  %8 = load %struct.Forward*, %struct.Forward** %6, align 8
  %9 = getelementptr inbounds %struct.Forward, %struct.Forward* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.ssh*, %struct.ssh** %5, align 8
  %14 = load i32, i32* @SSH_CHANNEL_UNIX_LISTENER, align 4
  %15 = load %struct.Forward*, %struct.Forward** %6, align 8
  %16 = load %struct.ForwardOptions*, %struct.ForwardOptions** %7, align 8
  %17 = call i32 @channel_setup_fwd_listener_streamlocal(%struct.ssh* %13, i32 %14, %struct.Forward* %15, %struct.ForwardOptions* %16)
  store i32 %17, i32* %4, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.ssh*, %struct.ssh** %5, align 8
  %20 = load i32, i32* @SSH_CHANNEL_PORT_LISTENER, align 4
  %21 = load %struct.Forward*, %struct.Forward** %6, align 8
  %22 = load %struct.ForwardOptions*, %struct.ForwardOptions** %7, align 8
  %23 = call i32 @channel_setup_fwd_listener_tcpip(%struct.ssh* %19, i32 %20, %struct.Forward* %21, i32* null, %struct.ForwardOptions* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @channel_setup_fwd_listener_streamlocal(%struct.ssh*, i32, %struct.Forward*, %struct.ForwardOptions*) #1

declare dso_local i32 @channel_setup_fwd_listener_tcpip(%struct.ssh*, i32, %struct.Forward*, i32*, %struct.ForwardOptions*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
