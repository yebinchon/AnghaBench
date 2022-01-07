; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_start_discard.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_start_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state* }
%struct.session_state = type { i64, i32, i64, %struct.sshmac* }
%struct.sshenc = type { i32 }
%struct.sshmac = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Packet corrupt\00", align 1
@SSH_ERR_MAC_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.sshenc*, %struct.sshmac*, i64, i64)* @ssh_packet_start_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssh_packet_start_discard(%struct.ssh* %0, %struct.sshenc* %1, %struct.sshmac* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca %struct.sshenc*, align 8
  %9 = alloca %struct.sshmac*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.session_state*, align 8
  %13 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %7, align 8
  store %struct.sshenc* %1, %struct.sshenc** %8, align 8
  store %struct.sshmac* %2, %struct.sshmac** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.ssh*, %struct.ssh** %7, align 8
  %15 = getelementptr inbounds %struct.ssh, %struct.ssh* %14, i32 0, i32 0
  %16 = load %struct.session_state*, %struct.session_state** %15, align 8
  store %struct.session_state* %16, %struct.session_state** %12, align 8
  %17 = load %struct.sshenc*, %struct.sshenc** %8, align 8
  %18 = icmp eq %struct.sshenc* %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %5
  %20 = load %struct.sshenc*, %struct.sshenc** %8, align 8
  %21 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cipher_is_cbc(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.sshmac*, %struct.sshmac** %9, align 8
  %27 = icmp ne %struct.sshmac* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.sshmac*, %struct.sshmac** %9, align 8
  %30 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28, %19, %5
  %34 = load %struct.ssh*, %struct.ssh** %7, align 8
  %35 = call i32 @sshpkt_disconnect(%struct.ssh* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %75

39:                                               ; preds = %33
  %40 = load i32, i32* @SSH_ERR_MAC_INVALID, align 4
  store i32 %40, i32* %6, align 4
  br label %75

41:                                               ; preds = %28, %25
  %42 = load %struct.sshmac*, %struct.sshmac** %9, align 8
  %43 = icmp ne %struct.sshmac* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.sshmac*, %struct.sshmac** %9, align 8
  %46 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.sshmac*, %struct.sshmac** %9, align 8
  %51 = load %struct.session_state*, %struct.session_state** %12, align 8
  %52 = getelementptr inbounds %struct.session_state, %struct.session_state* %51, i32 0, i32 3
  store %struct.sshmac* %50, %struct.sshmac** %52, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.session_state*, %struct.session_state** %12, align 8
  %55 = getelementptr inbounds %struct.session_state, %struct.session_state* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %49, %44, %41
  %57 = load %struct.session_state*, %struct.session_state** %12, align 8
  %58 = getelementptr inbounds %struct.session_state, %struct.session_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @sshbuf_len(i32 %59)
  %61 = load i64, i64* %11, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.ssh*, %struct.ssh** %7, align 8
  %65 = call i32 @ssh_packet_stop_discard(%struct.ssh* %64)
  store i32 %65, i32* %6, align 4
  br label %75

66:                                               ; preds = %56
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.session_state*, %struct.session_state** %12, align 8
  %69 = getelementptr inbounds %struct.session_state, %struct.session_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @sshbuf_len(i32 %70)
  %72 = sub nsw i64 %67, %71
  %73 = load %struct.session_state*, %struct.session_state** %12, align 8
  %74 = getelementptr inbounds %struct.session_state, %struct.session_state* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %66, %63, %39, %37
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @cipher_is_cbc(i32) #1

declare dso_local i32 @sshpkt_disconnect(%struct.ssh*, i8*) #1

declare dso_local i64 @sshbuf_len(i32) #1

declare dso_local i32 @ssh_packet_stop_discard(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
