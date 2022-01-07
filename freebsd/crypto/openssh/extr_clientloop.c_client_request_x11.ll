; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_request_x11.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_request_x11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ssh = type { i32 }

@options = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [42 x i8] c"Warning: ssh server tried X11 forwarding.\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"Warning: this is probably a break-in attempt by a malicious server.\00", align 1
@x11_refuse_time = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"Rejected X11 connection after ForwardX11Timeout expired\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"client_request_x11: request from %s %d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"x11\00", align 1
@SSH_CHANNEL_X11_OPEN = common dso_local global i32 0, align 4
@CHAN_TCP_WINDOW_DEFAULT = common dso_local global i32 0, align 4
@CHAN_X11_PACKET_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.ssh*, i8*, i32)* @client_request_x11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @client_request_x11(%struct.ssh* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @options, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @error(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %51

17:                                               ; preds = %3
  %18 = load i64, i64* @x11_refuse_time, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = call i64 (...) @monotime()
  %22 = load i64, i64* @x11_refuse_time, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @verbose(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %51

26:                                               ; preds = %20, %17
  %27 = call i8* @packet_get_string(i32* null)
  store i8* %27, i8** %9, align 8
  %28 = call i32 (...) @packet_get_int()
  store i32 %28, i32* %10, align 4
  %29 = call i32 (...) @packet_check_eom()
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load %struct.ssh*, %struct.ssh** %5, align 8
  %36 = call i32 @x11_connect_display(%struct.ssh* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %51

40:                                               ; preds = %26
  %41 = load %struct.ssh*, %struct.ssh** %5, align 8
  %42 = load i32, i32* @SSH_CHANNEL_X11_OPEN, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @CHAN_TCP_WINDOW_DEFAULT, align 4
  %46 = load i32, i32* @CHAN_X11_PACKET_DEFAULT, align 4
  %47 = call %struct.TYPE_5__* @channel_new(%struct.ssh* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 -1, i32 %45, i32 %46, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %8, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %4, align 8
  br label %51

51:                                               ; preds = %40, %39, %24, %14
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %52
}

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @monotime(...) #1

declare dso_local i32 @verbose(i8*) #1

declare dso_local i8* @packet_get_string(i32*) #1

declare dso_local i32 @packet_get_int(...) #1

declare dso_local i32 @packet_check_eom(...) #1

declare dso_local i32 @debug(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @x11_connect_display(%struct.ssh*) #1

declare dso_local %struct.TYPE_5__* @channel_new(%struct.ssh*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
