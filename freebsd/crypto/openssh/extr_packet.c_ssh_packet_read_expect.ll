; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_read_expect.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_read_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Protocol error: expected packet type %d, got %d\00", align 1
@SSH_ERR_PROTOCOL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_packet_read_expect(%struct.ssh* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ssh*, %struct.ssh** %4, align 8
  %9 = call i32 @ssh_packet_read_seqnr(%struct.ssh* %8, i64* %7, i32* null)
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.ssh*, %struct.ssh** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @sshpkt_disconnect(%struct.ssh* %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @SSH_ERR_PROTOCOL_ERROR, align 4
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %25, %23, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @ssh_packet_read_seqnr(%struct.ssh*, i64*, i32*) #1

declare dso_local i32 @sshpkt_disconnect(%struct.ssh*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
