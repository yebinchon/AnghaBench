; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_server_request_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_serverloop.c_server_request_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ssh = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"input_session_request\00", align 1
@no_more_sessions = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"Possible attack: attempt to open a session after additional sessions disabled\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"session\00", align 1
@SSH_CHANNEL_LARVAL = common dso_local global i32 0, align 4
@CHAN_SES_PACKET_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"server-session\00", align 1
@the_authctxt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"session open failed, free channel %d\00", align 1
@session_close_by_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.ssh*)* @server_request_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @server_request_session(%struct.ssh* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %5 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @packet_check_eom()
  %7 = load i64, i64* @no_more_sessions, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @packet_disconnect(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.ssh*, %struct.ssh** %3, align 8
  %13 = load i32, i32* @SSH_CHANNEL_LARVAL, align 4
  %14 = load i32, i32* @CHAN_SES_PACKET_DEFAULT, align 4
  %15 = call %struct.TYPE_5__* @channel_new(%struct.ssh* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %13, i32 -1, i32 -1, i32 -1, i32 0, i32 %14, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %4, align 8
  %16 = load i32, i32* @the_authctxt, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @session_open(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %30

22:                                               ; preds = %11
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load %struct.ssh*, %struct.ssh** %3, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = call i32 @channel_free(%struct.ssh* %27, %struct.TYPE_5__* %28)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %38

30:                                               ; preds = %11
  %31 = load %struct.ssh*, %struct.ssh** %3, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @session_close_by_channel, align 4
  %36 = call i32 @channel_register_cleanup(%struct.ssh* %31, i32 %34, i32 %35, i32 0)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %2, align 8
  br label %38

38:                                               ; preds = %30, %22
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %39
}

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @packet_check_eom(...) #1

declare dso_local i32 @packet_disconnect(i8*) #1

declare dso_local %struct.TYPE_5__* @channel_new(%struct.ssh*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @session_open(i32, i32) #1

declare dso_local i32 @channel_free(%struct.ssh*, %struct.TYPE_5__*) #1

declare dso_local i32 @channel_register_cleanup(%struct.ssh*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
