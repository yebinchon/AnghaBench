; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_set_interactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_set_interactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state* }
%struct.session_state = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssh_packet_set_interactive(%struct.ssh* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.session_state*, align 8
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ssh*, %struct.ssh** %5, align 8
  %11 = getelementptr inbounds %struct.ssh, %struct.ssh* %10, i32 0, i32 0
  %12 = load %struct.session_state*, %struct.session_state** %11, align 8
  store %struct.session_state* %12, %struct.session_state** %9, align 8
  %13 = load %struct.session_state*, %struct.session_state** %9, align 8
  %14 = getelementptr inbounds %struct.session_state, %struct.session_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %43

18:                                               ; preds = %4
  %19 = load %struct.session_state*, %struct.session_state** %9, align 8
  %20 = getelementptr inbounds %struct.session_state, %struct.session_state* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.session_state*, %struct.session_state** %9, align 8
  %23 = getelementptr inbounds %struct.session_state, %struct.session_state* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ssh*, %struct.ssh** %5, align 8
  %25 = call i32 @ssh_packet_connection_is_on_socket(%struct.ssh* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %43

28:                                               ; preds = %18
  %29 = load %struct.session_state*, %struct.session_state** %9, align 8
  %30 = getelementptr inbounds %struct.session_state, %struct.session_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_nodelay(i32 %31)
  %33 = load %struct.ssh*, %struct.ssh** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i32 @ssh_packet_set_tos(%struct.ssh* %33, i32 %41)
  br label %43

43:                                               ; preds = %40, %27, %17
  ret void
}

declare dso_local i32 @ssh_packet_connection_is_on_socket(%struct.ssh*) #1

declare dso_local i32 @set_nodelay(i32) #1

declare dso_local i32 @ssh_packet_set_tos(%struct.ssh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
