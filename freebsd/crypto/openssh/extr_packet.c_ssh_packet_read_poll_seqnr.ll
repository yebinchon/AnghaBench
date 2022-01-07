; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_read_poll_seqnr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_read_poll_seqnr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.session_state* }
%struct.session_state = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"received packet type %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Received SSH2_MSG_IGNORE\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Remote: %.900s\00", align 1
@SSH2_DISCONNECT_BY_APPLICATION = common dso_local global i32* null, align 8
@SYSLOG_LEVEL_INFO = common dso_local global i32 0, align 4
@SYSLOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Received disconnect from %s port %d:%u: %.400s\00", align 1
@SSH_ERR_DISCONNECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Received SSH2_MSG_UNIMPLEMENTED for %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_packet_read_poll_seqnr(%struct.ssh* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.session_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ssh*, %struct.ssh** %5, align 8
  %14 = getelementptr inbounds %struct.ssh, %struct.ssh* %13, i32 0, i32 0
  %15 = load %struct.session_state*, %struct.session_state** %14, align 8
  store %struct.session_state* %15, %struct.session_state** %8, align 8
  br label %16

16:                                               ; preds = %109, %3
  store i32* null, i32** %12, align 8
  %17 = load %struct.ssh*, %struct.ssh** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @ssh_packet_read_poll2(%struct.ssh* %17, i32* %18, i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %110

25:                                               ; preds = %16
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.session_state*, %struct.session_state** %8, align 8
  %31 = getelementptr inbounds %struct.session_state, %struct.session_state* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @DBG(i32 %34)
  br label %36

36:                                               ; preds = %29, %25
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %108 [
    i32 129, label %39
    i32 131, label %41
    i32 130, label %62
    i32 128, label %99
  ]

39:                                               ; preds = %36
  %40 = call i32 @debug3(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %109

41:                                               ; preds = %36
  %42 = load %struct.ssh*, %struct.ssh** %5, align 8
  %43 = call i32 @sshpkt_get_u8(%struct.ssh* %42, i32* null)
  store i32 %43, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load %struct.ssh*, %struct.ssh** %5, align 8
  %47 = call i32 @sshpkt_get_string(%struct.ssh* %46, i32** %12, i32* null)
  store i32 %47, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.ssh*, %struct.ssh** %5, align 8
  %51 = call i32 @sshpkt_get_string(%struct.ssh* %50, i32** null, i32* null)
  store i32 %51, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %45, %41
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @free(i32* %54)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %110

57:                                               ; preds = %49
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %58)
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @free(i32* %60)
  br label %109

62:                                               ; preds = %36
  %63 = load %struct.ssh*, %struct.ssh** %5, align 8
  %64 = call i32 @sshpkt_get_u32(%struct.ssh* %63, i32** %9)
  store i32 %64, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.ssh*, %struct.ssh** %5, align 8
  %68 = call i32 @sshpkt_get_string(%struct.ssh* %67, i32** %12, i32* null)
  store i32 %68, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %110

72:                                               ; preds = %66
  %73 = load %struct.ssh*, %struct.ssh** %5, align 8
  %74 = getelementptr inbounds %struct.ssh, %struct.ssh* %73, i32 0, i32 0
  %75 = load %struct.session_state*, %struct.session_state** %74, align 8
  %76 = getelementptr inbounds %struct.session_state, %struct.session_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32*, i32** %9, align 8
  %81 = load i32*, i32** @SSH2_DISCONNECT_BY_APPLICATION, align 8
  %82 = icmp eq i32* %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @SYSLOG_LEVEL_INFO, align 4
  br label %87

85:                                               ; preds = %79, %72
  %86 = load i32, i32* @SYSLOG_LEVEL_ERROR, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.ssh*, %struct.ssh** %5, align 8
  %90 = call i32 @ssh_remote_ipaddr(%struct.ssh* %89)
  %91 = load %struct.ssh*, %struct.ssh** %5, align 8
  %92 = call i32 @ssh_remote_port(%struct.ssh* %91)
  %93 = load i32*, i32** %9, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @do_log2(i32 %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %92, i32* %93, i32* %94)
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @free(i32* %96)
  %98 = load i32, i32* @SSH_ERR_DISCONNECTED, align 4
  store i32 %98, i32* %4, align 4
  br label %110

99:                                               ; preds = %36
  %100 = load %struct.ssh*, %struct.ssh** %5, align 8
  %101 = call i32 @sshpkt_get_u32(%struct.ssh* %100, i32** %10)
  store i32 %101, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %4, align 4
  br label %110

105:                                              ; preds = %99
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32* %106)
  br label %109

108:                                              ; preds = %36
  store i32 0, i32* %4, align 4
  br label %110

109:                                              ; preds = %105, %57, %39
  br label %16

110:                                              ; preds = %108, %103, %87, %70, %53, %23
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @ssh_packet_read_poll2(%struct.ssh*, i32*, i32*) #1

declare dso_local i32 @DBG(i32) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @debug3(i8*) #1

declare dso_local i32 @sshpkt_get_u8(%struct.ssh*, i32*) #1

declare dso_local i32 @sshpkt_get_string(%struct.ssh*, i32**, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sshpkt_get_u32(%struct.ssh*, i32**) #1

declare dso_local i32 @do_log2(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ssh_remote_ipaddr(%struct.ssh*) #1

declare dso_local i32 @ssh_remote_port(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
