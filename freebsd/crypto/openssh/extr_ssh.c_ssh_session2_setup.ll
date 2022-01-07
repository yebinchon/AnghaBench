; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_ssh_session2_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh.c_ssh_session2_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32, i64 }
%struct.ssh = type { i32 }

@tty_flag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"X11 forwarding requested but DISPLAY not set\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Requesting X11 forwarding with authentication spoofing.\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"X11 forwarding\00", align 1
@CONFIRM_WARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Requesting authentication agent forwarding.\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"auth-agent-req@openssh.com\00", align 1
@subsystem_flag = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@stdin = common dso_local global i32 0, align 4
@command = common dso_local global i32 0, align 4
@environ = external dso_local global i8**, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, i32, i32, i8*)* @ssh_session2_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssh_session2_setup(%struct.ssh* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* @tty_flag, align 4
  store i32 %13, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %74

17:                                               ; preds = %4
  %18 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 6), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21, %17
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 6), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load %struct.ssh*, %struct.ssh** %5, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 5), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 4), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 3), align 8
  %35 = call i64 @client_x11_get_proto(%struct.ssh* %30, i8* %31, i32 %32, i32 %33, i32 %34, i8** %11, i8** %12)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = call i32 @debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.ssh*, %struct.ssh** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @x11_request_forwarding_with_spoofing(%struct.ssh* %39, i32 %40, i8* %41, i8* %42, i8* %43, i32 1)
  %45 = load %struct.ssh*, %struct.ssh** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @CONFIRM_WARN, align 4
  %48 = call i32 @client_expect_confirm(%struct.ssh* %45, i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %37, %29, %26
  %50 = call i32 (...) @check_agent_present()
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 2), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = call i32 @debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %55 = load %struct.ssh*, %struct.ssh** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @channel_request_start(%struct.ssh* %55, i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %58 = call i32 (...) @packet_send()
  br label %59

59:                                               ; preds = %53, %49
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 1), align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @options, i32 0, i32 0), align 8
  %63 = call i32 @packet_set_interactive(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.ssh*, %struct.ssh** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @tty_flag, align 4
  %67 = load i32, i32* @subsystem_flag, align 4
  %68 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32, i32* @stdin, align 4
  %70 = call i32 @fileno(i32 %69)
  %71 = load i32, i32* @command, align 4
  %72 = load i8**, i8*** @environ, align 8
  %73 = call i32 @client_session2_setup(%struct.ssh* %64, i32 %65, i32 %66, i32 %67, i8* %68, i32* null, i32 %70, i32 %71, i8** %72)
  br label %74

74:                                               ; preds = %59, %16
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i64 @client_x11_get_proto(%struct.ssh*, i8*, i32, i32, i32, i8**, i8**) #1

declare dso_local i32 @x11_request_forwarding_with_spoofing(%struct.ssh*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @client_expect_confirm(%struct.ssh*, i32, i8*, i32) #1

declare dso_local i32 @check_agent_present(...) #1

declare dso_local i32 @channel_request_start(%struct.ssh*, i32, i8*, i32) #1

declare dso_local i32 @packet_send(...) #1

declare dso_local i32 @packet_set_interactive(i32, i32, i32) #1

declare dso_local i32 @client_session2_setup(%struct.ssh*, i32, i32, i32, i8*, i32*, i32, i32, i8**) #1

declare dso_local i32 @fileno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
