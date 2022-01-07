; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_enable_delayed_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_enable_delayed_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state* }
%struct.session_state = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.sshcomp }
%struct.sshcomp = type { i32, i64 }

@MODE_MAX = common dso_local global i32 0, align 4
@COMP_DELAYED = common dso_local global i64 0, align 8
@MODE_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*)* @ssh_packet_enable_delayed_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssh_packet_enable_delayed_compress(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.session_state*, align 8
  %5 = alloca %struct.sshcomp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %8 = load %struct.ssh*, %struct.ssh** %3, align 8
  %9 = getelementptr inbounds %struct.ssh, %struct.ssh* %8, i32 0, i32 0
  %10 = load %struct.session_state*, %struct.session_state** %9, align 8
  store %struct.session_state* %10, %struct.session_state** %4, align 8
  store %struct.sshcomp* null, %struct.sshcomp** %5, align 8
  %11 = load %struct.session_state*, %struct.session_state** %4, align 8
  %12 = getelementptr inbounds %struct.session_state, %struct.session_state* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %77, %1
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MODE_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %80

17:                                               ; preds = %13
  %18 = load %struct.session_state*, %struct.session_state** %4, align 8
  %19 = getelementptr inbounds %struct.session_state, %struct.session_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp eq %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %77

27:                                               ; preds = %17
  %28 = load %struct.session_state*, %struct.session_state** %4, align 8
  %29 = getelementptr inbounds %struct.session_state, %struct.session_state* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.sshcomp* %35, %struct.sshcomp** %5, align 8
  %36 = load %struct.sshcomp*, %struct.sshcomp** %5, align 8
  %37 = icmp ne %struct.sshcomp* %36, null
  br i1 %37, label %38, label %76

38:                                               ; preds = %27
  %39 = load %struct.sshcomp*, %struct.sshcomp** %5, align 8
  %40 = getelementptr inbounds %struct.sshcomp, %struct.sshcomp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %76, label %43

43:                                               ; preds = %38
  %44 = load %struct.sshcomp*, %struct.sshcomp** %5, align 8
  %45 = getelementptr inbounds %struct.sshcomp, %struct.sshcomp* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @COMP_DELAYED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %43
  %50 = load %struct.ssh*, %struct.ssh** %3, align 8
  %51 = call i32 @ssh_packet_init_compression(%struct.ssh* %50)
  store i32 %51, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %81

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MODE_OUT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.ssh*, %struct.ssh** %3, align 8
  %61 = call i32 @start_compression_out(%struct.ssh* %60, i32 6)
  store i32 %61, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %81

65:                                               ; preds = %59
  br label %73

66:                                               ; preds = %55
  %67 = load %struct.ssh*, %struct.ssh** %3, align 8
  %68 = call i32 @start_compression_in(%struct.ssh* %67)
  store i32 %68, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %81

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %65
  %74 = load %struct.sshcomp*, %struct.sshcomp** %5, align 8
  %75 = getelementptr inbounds %struct.sshcomp, %struct.sshcomp* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %43, %38, %27
  br label %77

77:                                               ; preds = %76, %26
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %13

80:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %70, %63, %53
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @ssh_packet_init_compression(%struct.ssh*) #1

declare dso_local i32 @start_compression_out(%struct.ssh*, i32) #1

declare dso_local i32 @start_compression_in(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
