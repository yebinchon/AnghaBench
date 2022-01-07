; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_set_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state* }
%struct.session_state = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssh_packet_set_timeout(%struct.ssh* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.session_state*, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ssh*, %struct.ssh** %4, align 8
  %9 = getelementptr inbounds %struct.ssh, %struct.ssh* %8, i32 0, i32 0
  %10 = load %struct.session_state*, %struct.session_state** %9, align 8
  store %struct.session_state* %10, %struct.session_state** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %3
  %17 = load %struct.session_state*, %struct.session_state** %7, align 8
  %18 = getelementptr inbounds %struct.session_state, %struct.session_state* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 4
  br label %37

19:                                               ; preds = %13
  %20 = load i32, i32* @INT_MAX, align 4
  %21 = sdiv i32 %20, 1000
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @INT_MAX, align 4
  %28 = load %struct.session_state*, %struct.session_state** %7, align 8
  %29 = getelementptr inbounds %struct.session_state, %struct.session_state* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %37

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %31, %32
  %34 = mul nsw i32 %33, 1000
  %35 = load %struct.session_state*, %struct.session_state** %7, align 8
  %36 = getelementptr inbounds %struct.session_state, %struct.session_state* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %16, %30, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
