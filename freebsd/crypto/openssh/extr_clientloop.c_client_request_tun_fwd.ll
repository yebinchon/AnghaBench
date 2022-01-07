; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_request_tun_fwd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_clientloop.c_client_request_tun_fwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.ssh = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@SSH_TUNMODE_NO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Requesting tun unit %d in mode %d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Tunnel device open failed.\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Tunnel forwarding using interface %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tun\00", align 1
@SSH_CHANNEL_OPENING = common dso_local global i32 0, align 4
@CHAN_TCP_WINDOW_DEFAULT = common dso_local global i32 0, align 4
@CHAN_TCP_PACKET_DEFAULT = common dso_local global i32 0, align 4
@SSH2_MSG_CHANNEL_OPEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"tun@openssh.com\00", align 1
@SSH_TUNMODE_POINTOPOINT = common dso_local global i64 0, align 8
@options = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@sys_tun_infilter = common dso_local global i32 0, align 4
@sys_tun_outfilter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @client_request_tun_fwd(%struct.ssh* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SSH_TUNMODE_NO, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %60

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @tun_open(i32 %21, i32 %22, i8** %12)
  store i32 %23, i32* %11, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %60

27:                                               ; preds = %17
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load %struct.ssh*, %struct.ssh** %6, align 8
  %31 = load i32, i32* @SSH_CHANNEL_OPENING, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @CHAN_TCP_WINDOW_DEFAULT, align 4
  %35 = load i32, i32* @CHAN_TCP_PACKET_DEFAULT, align 4
  %36 = call %struct.TYPE_4__* @channel_new(%struct.ssh* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 -1, i32 %34, i32 %35, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %10, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* @SSH2_MSG_CHANNEL_OPEN, align 4
  %40 = call i32 @packet_start(i32 %39)
  %41 = call i32 @packet_put_cstring(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @packet_put_int(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @packet_put_int(i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @packet_put_int(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @packet_put_int(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @packet_put_int(i32 %56)
  %58 = call i32 (...) @packet_send()
  %59 = load i8*, i8** %12, align 8
  store i8* %59, i8** %5, align 8
  br label %60

60:                                               ; preds = %27, %25, %16
  %61 = load i8*, i8** %5, align 8
  ret i8* %61
}

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @tun_open(i32, i32, i8**) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.TYPE_4__* @channel_new(%struct.ssh*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @packet_start(i32) #1

declare dso_local i32 @packet_put_cstring(i8*) #1

declare dso_local i32 @packet_put_int(i32) #1

declare dso_local i32 @packet_send(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
