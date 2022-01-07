; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_stop_discard.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_stop_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state* }
%struct.session_state = type { i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@PACKET_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Finished discarding for %.200s port %d\00", align 1
@SSH_ERR_MAC_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_packet_stop_discard(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.session_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %8 = load %struct.ssh*, %struct.ssh** %3, align 8
  %9 = getelementptr inbounds %struct.ssh, %struct.ssh* %8, i32 0, i32 0
  %10 = load %struct.session_state*, %struct.session_state** %9, align 8
  store %struct.session_state* %10, %struct.session_state** %4, align 8
  %11 = load %struct.session_state*, %struct.session_state** %4, align 8
  %12 = getelementptr inbounds %struct.session_state, %struct.session_state* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %1
  %16 = load i64, i64* @PACKET_MAX_SIZE, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.session_state*, %struct.session_state** %4, align 8
  %19 = getelementptr inbounds %struct.session_state, %struct.session_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ugt i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.session_state*, %struct.session_state** %4, align 8
  %24 = getelementptr inbounds %struct.session_state, %struct.session_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %22, %15
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %30 = call i32 @memset(i8* %29, i8 signext 97, i32 1024)
  br label %31

31:                                               ; preds = %47, %28
  %32 = load %struct.session_state*, %struct.session_state** %4, align 8
  %33 = getelementptr inbounds %struct.session_state, %struct.session_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @sshbuf_len(i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.session_state*, %struct.session_state** %4, align 8
  %40 = getelementptr inbounds %struct.session_state, %struct.session_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %43 = call i32 @sshbuf_put(i32 %41, i8* %42, i32 1024)
  store i32 %43, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %69

47:                                               ; preds = %38
  br label %31

48:                                               ; preds = %31
  %49 = load %struct.session_state*, %struct.session_state** %4, align 8
  %50 = getelementptr inbounds %struct.session_state, %struct.session_state* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.session_state*, %struct.session_state** %4, align 8
  %53 = getelementptr inbounds %struct.session_state, %struct.session_state* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.session_state*, %struct.session_state** %4, align 8
  %57 = getelementptr inbounds %struct.session_state, %struct.session_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sshbuf_ptr(i32 %58)
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @mac_compute(i64 %51, i32 %55, i32 %59, i64 %60, i32* null, i32 0)
  br label %62

62:                                               ; preds = %48, %1
  %63 = load %struct.ssh*, %struct.ssh** %3, align 8
  %64 = call i32 @ssh_remote_ipaddr(%struct.ssh* %63)
  %65 = load %struct.ssh*, %struct.ssh** %3, align 8
  %66 = call i32 @ssh_remote_port(%struct.ssh* %65)
  %67 = call i32 @logit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %66)
  %68 = load i32, i32* @SSH_ERR_MAC_INVALID, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %45
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @sshbuf_len(i32) #1

declare dso_local i32 @sshbuf_put(i32, i8*, i32) #1

declare dso_local i32 @mac_compute(i64, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @sshbuf_ptr(i32) #1

declare dso_local i32 @logit(i8*, i32, i32) #1

declare dso_local i32 @ssh_remote_ipaddr(%struct.ssh*) #1

declare dso_local i32 @ssh_remote_port(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
